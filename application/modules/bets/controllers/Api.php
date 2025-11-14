<?php
use GuzzleHttp\Client;
use MarkWilson\XmlToJson\XmlToJsonConverter;
require_once APPPATH . 'config/db.php';
require_once "calculateBet.php";

//require __DIR__.DIRECTORY_SEPARATOR."..".DIRECTORY_SEPARATOR."base.php";

class Api extends CI_Controller {

    public $CI;
    private $destination = "http://ostadbet.com/upload/API/";
    private $client;

	
	public $live_bet = [ 'Last Team to Score', 
						'First Team To Score', 
						'1st Goal',
						'2nd Goal',
						'3rd Goal',
						'4th Goal',
						'5th Goal',
						'6th Goal',
						 ];
	
    public function __construct () {
        parent::__construct();
        $this->CI = & get_instance();

        $this->client = new Client();
        
        $this->output->delete_cache();
        date_default_timezone_set('Asia/Tehran');

        if ( !$this->CI->input->is_cli_request() ):
//            die('Access Denied from the HTTP Requests');
        endif;
        
    }
	
	public function convertSpaceToUnderline($data){
		$data = str_replace( '/', '_', implode('_',explode(' ',$data)));
		return str_replace('-','_',$data);
	}
	
	public function Calculate () {
		
		$db = new DB();
		
		$sport = $db->multi_select('sports','*',['is_result'],['1'],'sort ASC');

		foreach ( $sport as $sport_value ){
			$url = API_DIR . $sport_value['name_en'] . "/results.json";
			
			if ( !file_exists($url) ):
				continue;	
			endif;
			
			$matches = json_decode(file_get_contents( $url ));
			$sortedByMatchID = array();
			
			if ( !isset( $matches->data ) ):
				continue;
			endif;
			
			foreach ( $matches->data as $item ) {
				$sortedByMatchID[$item->id] = $item;
			}
			
			ksort($sortedByMatchID , SORT_NUMERIC);
			
			$this->load->eloquent('Bet');
        	$this->load->eloquent('Bet_form');

			$whereID = array();
			
			$this->updateMatchStatus($whereID, $sortedByMatchID);
			
			$Bet_forms = Bet_form::whereIn('match_id' , $whereID)->get();
			
			foreach ( $Bet_forms as $form ){
			
				
				if ( $form->bet->status == 0 && $form->bet->type == 1 ){
				
					$this->calculateBet( $sortedByMatchID, $form );
				}
				else if ( $form->bet->type != 1 ){
					$this->calculateMixBet( $sortedByMatchID, $form );
				}
			
			
			
			}
			
			
			
			
		}
		
		$mix_id = $this->calculate_mix_bet();
		
		var_dump( $mix_id );
		$mix_bet = Bet_form::whereIn('bets_id' , $mix_id)->get();
		var_dump( $mix_bet );
		foreach ( $mix_bet as $form ){	
			
			$this->calculateMixBets( $sortedByMatchID, $form );
		}
		
		
	}
	
	public function updateMatchStatus ( &$whereID, $sortedByMatchID) {
		
		$this->load->eloquent('Bet');
		$this->load->eloquent('Bet_form');
		
		
		foreach ( $sortedByMatchID as $match_id => $match ){
			
			if ( $match->status == 'FT' || $match->status == 'Finished'|| $match->status == 'TO BE FIXED' || $match->status == 'After Over Time'){
				
				Bet_form::where('match_id' , $match_id)->update([
                    'status' => 'FT' ,
                    'home_score_ft' => $match->home_score ,
                    'away_score_ft' => $match->away_score ,
                ]);
                $whereID[] = $match_id;
			}
			elseif ( $match->status == 'AET' OR $match->status == 'FT_PEN' OR $match->status == 'ET' ) {

                $ftt = explode("-" , $match->ft_score);

                Bet_form::where('match_id' , $match_id)->update([
                    'status' => 'FT' ,
                    'home_score_ft' => $ftt[0] ,
                    'away_score_ft' => $ftt[1] ,

                ]);
                $whereID[] = $match_id;
            }
            elseif ( $match->status == 'POSTP' OR $match->status == 'CANCL' OR $match->status == 'Cancelled' OR $match->status == 'Deleted' OR $match->status == 'ABAN' ) {
                Bet_form::where('match_id' , $match_id)->update(['odd' => 1 , 'status' => $match->status] );
                $whereID[] = $match_id;
            }
			else {
				
			}
		}
		
	}
	
	public function calculateBet( $sortedByMatchID, $form ){
		$calcBet = new calculateBet();

		if ( $form->status == 'FT' || $form->status == 'Finished'|| $form->status == 'TO BE FIXED' ){
			$win = $calcBet->checkWin( $sortedByMatchID, $form );
			
		}
		else if (( $form->status == 'CNCL' || $form->status == 'Deleted' )){
			$win = 3;
		}
		else {
		    var_dump( $form->match_id );
		    var_dump( $form->soccer_type );
            
			$win = 10;
        }

		
		var_dump($win);
		
		$this->calculateResult ( $win, $form );
		
	}
	
	public function calculateMixBet ( $sortedByMatchID, $form ){
		
		$calcBet = new calculateBet();
		
		$forms = $form->bet->bet_form;
		
		var_dump( $form );
		
		if ( $form->status == 'FT' OR $form->status == 'FT_PEN' ) {
					
// determine the result of Mix bets
			$win = $calcBet->checkWin( $sortedByMatchID, $form);
			var_dump( $win );
			
			if ( $win === true || $win == 1 ) {
				$form->update(['result_status' => 1]);
			}
			else if ( $win == 3 || $win == 4 || $win == 5 ){
				$form->update(['result_status' => $win]);
			}
			else if ( $win != 10 ) {
				$form->update(['result_status' => 2]);
			}

			var_dump( 'is mix ' );
//			if ( $this->isMixMatchesFinalTime($forms ) ) {
//				
//				$result=$this->DeterminationResult($forms , $sortedByMatchID);
//
//				var_dump( 'mix bet');
//				var_dump( $result );
//				if ( $result == 1 ) {
//					// Deposite the stake of bet to the user's account
//					$this->depositStake($form->bet);
//					// status = 1 : wining and settled
//					$form->bet->update(array( 'status' => 1, 'pay_stake_status'=>1 ));
//				}
//				else if ( $result == 2 ) {
//					$form->bet->update(array( 'status' => 2 ));
//					$this->affiliate($form);
//				}
//			}
//			else {
//	// not all finaled		
////				continue;
//			}
		}
		else if ( $form->status == 'CNCL' || $form->status == 'Deleted' ){
			$form->bet->update(
				array(
					'effective_odd' => $form->bet->effective_odd / $form->odd ,
					'status' => 3
				)
			);
			$form->update(array(
				'result_status' => 3 ,
				'odd' => 1 ,
				'status' => 'FT'
			));
//			if ( $this->isMixMatchesFinalTime($forms) ) {
//				
//				$result=$this->DeterminationResult($forms , $sortedByMatchID);
//
//				if ( $result == 1 ) {
//					// Deposite the stake of bet to the user's account
//					$this->depositStake($form->bet);
//					// status = 1 : wining and settled
//					$form->bet->update(array( 'status' => 1, 'pay_stake_status'=>1 ));
//				}
//				else if ( $result == 2 ) {
//					$form->bet->update(array( 'status' => 2 ));
//					$this->affiliate($form);
//				}
//			}
		}
		else {
			var_dump('1111111');
//			continue;
		}
	}
	
	public function calculateMixBets ( $sortedByMatchID, $form ){
		
		$calcBet = new calculateBet();
		
		$forms = $form->bet->bet_form;
		
		var_dump( $form );
		
		if ( $form->status == 'FT' OR $form->status == 'FT_PEN' ) {
					
// determine the result of Mix bets
//			$win = $calcBet->checkWin( $sortedByMatchID, $form);
//			var_dump( $win );
//			
//			if ( $win === true || $win != 2 ) {
//				$form->update(['result_status' => 1]);
//			}
//			else if ( $win != 10 ) {
//				$form->update(['result_status' => 2]);
//			}
//
//			var_dump( 'is mix ' );
			if ( $this->isMixMatchesFinalTime($forms ) ) {
				
				$result=$this->DeterminationResult($forms , $sortedByMatchID);

				var_dump( 'mix bet');
				var_dump( $result );
				if ( $result == 1 ) {
					// Deposite the stake of bet to the user's account
					$this->depositStake($form->bet);
					// status = 1 : wining and settled
					$form->bet->update(array( 'status' => 1, 'pay_stake_status'=>1 ));
				}
				else if ( $result == 2 ) {
					$form->bet->update(array( 'status' => 2 ));
					$this->affiliate($form);
				}
			}
			else {
	// not all finaled		
//				continue;
			}
		}
		else if ( $form->status == 'CNCL' || $form->status == 'Deleted' ){
//			$form->bet->update(
//				array(
//					'effective_odd' => $form->bet->effective_odd / $form->odd ,
//					'status' => 3
//				)
//			);
//			$form->update(array(
//				'result_status' => 3 ,
//				'odd' => 1 ,
//				'status' => 'FT'
//			));
			if ( $this->isMixMatchesFinalTime($forms) ) {
				
				$result=$this->DeterminationResult($forms , $sortedByMatchID);

				if ( $result == 1 ) {
					// Deposite the stake of bet to the user's account
					$this->depositStake($form->bet);
					// status = 1 : wining and settled
					$form->bet->update(array( 'status' => 1, 'pay_stake_status'=>1 ));
				}
				else if ( $result == 2 ) {
					$form->bet->update(array( 'status' => 2 ));
					$this->affiliate($form);
				}
			}
		}
		else {
			var_dump('1111111');
//			continue;
		}
	}
	
	public function calculateMix ( ){
		
	}
	
	public function calculateResult ( $win, $form ){
		var_dump('calculateResult');
		var_dump($win);
		 if ( $win !== false ){
			 if ( $win === true || $win == 1 ){
				 if($this->depositStake($form->bet)){
					$this->updateStatus( $form, 1, 1, 1);
				}
			 }
			 else if ( $win == 3 ){
				 // cancel bet
				 $this->cancelBet( $form->bet );
				 $this->updateStatus( $form, 3, 3, 1);
			 	}
			else if ( $win == 4 ){
				 // nim bord
//				 $this->cancelBet( $form->bet );
//				 $this->updateStatus( $form, 4, 4, 1);
			}
			else if ( $win == 5 ){
				 // nim bakht
//				 $this->cancelBet( $form->bet );
//				 $this->updateStatus( $form, 5, 5, 1);
			}
			else if ( $win == 2 ){
				 // be moaref
				$this->affiliate($form);
			 	$this->updateStatus( $form, 2, 2, 0);
			 }
		 }
		else {
			 // be moaref
			$this->affiliate($form);
			$this->updateStatus( $form, 2, 2, 0);
		 }
	}
	
	public function updateStatus( $form, $result_status=0, $status=0, $pay_stake_status=0){
		$form->update(array(
			'result_status' => $result_status ,
		));
		$form->bet->update(array(
			'status' => $status,
			'pay_stake_status' => $pay_stake_status,
			
		));
	}
	
	public function calculate_mix_bet( ){
		
		$db = new DB();
		
		$mix = $db->get_mix_bet();
		
		if ( $mix == 0)
			return 0;
		
		$iterator = new RecursiveIteratorIterator(new RecursiveArrayIterator($mix));
		$mix_id = iterator_to_array($iterator,false);
		
		if ( $mix_id == 0 )
			return 0;
		
		return $mix_id;
		
		
	}
	
	public function UpcomingResult(){
		$matches = json_decode(file_get_contents(API_DIR . "upcoming/results.json"));
//		$matches = json_decode(file_get_contents(API_DIR . "home/resultsToday.json"));
		
		$sortedByMatchID = array();
		
		foreach ( $matches->data as $item ) {
			$sortedByMatchID[$item->id] = $item;
        }
		
		ksort($sortedByMatchID , SORT_NUMERIC);
		
		$this->load->eloquent('Bet');
        $this->load->eloquent('Bet_form');
		
		$whereID = array();
		
		foreach ( $sortedByMatchID as $match_id => $match ){
			
			if ( $match->status == 'FT' ){
				Bet_form::where('match_id' , $match_id)->update([
                    'status' => $match->status ,
                    'home_score_ft' => $match->home_score ,
                    'away_score_ft' => $match->away_score ,
                ]);
                $whereID[] = $match_id;
			}
			elseif ( $match->status == 'AET' OR $match->status == 'FT_PEN' OR $match->status == 'ET' ) {

                $ftt = explode("-" , $match->ft_score);

                Bet_form::where('match_id' , $match_id)->update([
                    'status' => 'FT' ,
                    'home_score_ft' => $ftt[0] ,
                    'away_score_ft' => $ftt[1] ,

                ]);
                $whereID[] = $match_id;
            }
            elseif ( $match->status == 'POSTP' OR $match->status == 'CANCL' OR $match->status == 'Deleted' OR $match->status == 'ABAN' ) {
                Bet_form::where('match_id' , $match_id)->update(array( 'odd' => 1 , 'status' => $match->status ));
                $whereID[] = $match_id;
            }
		}
		
		$Bet_forms = Bet_form::whereIn('match_id' , $whereID)->get();
		
		foreach ( $Bet_forms as $form ){
			
			if ( $form->bet->status != 0 ):
                continue;
            endif;
			
			if ( $form->bet->type == 1 ) {
					
				 if ( $form->status == 'FT' ){
					 
					 $win = $this->checkWin( $sortedByMatchID, $form );
					var_dump($win);
//					 if ( $win !== false ){
//						 if ( $win === true ){
//							 if($this->depositStake($form->bet)){
//								$form->update(array(
//								'result_status' => 1 ,
//								));
//								$form->bet->update(array(
//									'pay_stake_status' => 1,
//									'status' => 1
//								));
//							}
//						 }
//						 else if ( $win == 3 ){
//							 // cancel bet
//							 $this->cancelBet( $form->bet );
//							 $form->update(array(
//								'result_status' => 3 ,
//								));
//								$form->bet->update(array(
//									'pay_stake_status' => 1,
//									'status' => 3
//								));
//						 }
//					 }
//					 else {
//					  	$form->update(array(
//                            'result_status' => 2 ,
//                        ));
//                        $form->bet->update(array(
//                            'status' => 2
//                        ));
//						 // be moaref
//                        $this->affiliate($form);
//					 }
					 
					 
				 }
				else if ( $form->status == 'CNCL' || $form->status == 'Deleted' ){
					$form->update(array(
                        'result_status' => 3 ,
                    ));
                    $form->bet->update(array(
                        'effective_odd' => 1 ,
                        'status' => 3
                    ));
                    $this->depositStake($form->bet);
				}
				 
			}
			else {
				$forms = $form->bet->bet_form;
				
				if ( $form->status == 'FT' OR $form->status == 'FT_PEN' ) {

// determine the result of Mix bets
                        $win = $this->RowDeterminationResult($form , $sortedByMatchID);
                        if ( $win == true || $win == 1 ) {
                            $form->update([
                                'result_status' => 1
                            ]);
                        }
                        else {
                            $form->update([
                                'result_status' => 2
                            ]);
                        }

                        if ( $this->isMixMatchesFinalTime($forms , $sortedByMatchID) ) {
                            if ( $this->DeterminationResult($forms , $sortedByMatchID) ) {
// Deposite the stake of bet to the user's account
                                $this->depositStake($form->bet);
// status = 1 : wining and settled
                                $form->bet->update(array( 'status' => 1 ));
                            }
                            else {
                                $form->bet->update(array( 'status' => 2 ));
                                $this->affiliate($form);
                            }
                        }
                        else {
// not all finaled
                            continue;
                        }
                    }
					else if ( $form->status == 'CNCL' || $form->status == 'Deleted' ){
						$form->bet->update(
                            array(
                                'effective_odd' => $form->bet->effective_odd / $form->odd ,
								'status' => 3
                            )
						);
						$form->update(array(
							'result_status' => 3 ,
							'odd' => 1 ,
							'status' => 'FT'
						));
						if ( $this->isMixMatchesFinalTime($forms , $sortedByMatchID) ) {
							if ( $this->DeterminationResult($forms , $sortedByMatchID) ) {
	// Deposite the stake of bet to the user's account
								$this->depositStake($form->bet);
	// status = 1 : wining and settled
								$form->bet->update(array( 'status' => 1 ));
							}
							else {
								$form->bet->update(array( 'status' => 2 ));
								$this->affiliate($form);
							}
						}
					}
                    else {
                        continue;
                    }
			}
			
			
		}
		
		
	}
	
	public function checkWin ( $match, $form ){
		var_dump($form->bet_type);
		$label = 'check_'.$this->convertSpaceToUnderline(trim($form->bet_type));
//		var_dump($label);
//		$form->bet_type = ltrim( $form->bet_type, 'live_');
		if( method_exists($this, $label))
			return $this->{$label}( $match, $form );
		else
			return 10;
	}
	
	//////////////////// Live /////////////////////////
	
	
	/////////////////////////////////////
	
	
    /**
     * Check for final result of Bets 
     */
    public function checkResultUpComing ( $matches ) {

        $this->output->delete_cache();
        
        $resultInclude = array(
            'homeTeam' , 'awayTeam' , 'odds'
        );

        $sortedByMatchID = array();

        /**
         * organize and sort the data structure of matches
         */
//		var_dump($matches);
        foreach ( $matches->data as $item ) {
			if((isset($item->winning_odds_calculated) && $item->winning_odds_calculated == true && $item->status != 'NS'))
            	$sortedByMatchID[$item->id] = $item;
        }
        ksort($sortedByMatchID , SORT_NUMERIC);


        $this->load->eloquent('Bet');
        $this->load->eloquent('Bet_form');

        $whereID = array();
        foreach ( $sortedByMatchID as $match_id => $match ):
//			var_dump($match);
            if ( $match->status == 'FT' ) {
//				var_dump($match_id);
// we must know each matche's updated status for checking the bet's result specialy for mix types
                Bet_form::where('match_id' , $match_id)->update([
                    'status' => $match->status ,
                    'home_score_ft' => $match->home_score ,
                    'away_score_ft' => $match->away_score ,
                ]);
                $whereID[] = $match_id;
            }
            elseif ( $match->status == 'AET' OR $match->status == 'FT_PEN' OR $match->status == 'ET' ) {

                $ftt = explode("-" , $match->ft_score);

                Bet_form::where('match_id' , $match_id)->update([
                    'status' => 'FT' ,
                    'home_score_ft' => $ftt[0] ,
                    'away_score_ft' => $ftt[1] ,
                ]);
                $whereID[] = $match_id;
            }
            elseif ( $match->status == 'POSTP' OR $match->status == 'CANCL' OR $match->status == 'DELETED' OR $match->status == 'ABAN' ) {
                Bet_form::where('match_id' , $match_id)->update(array( 'odd' => 1 , 'status' => $match->status ));
                $whereID[] = $match_id;
            }
//		var_dump($match->status);
//		var_dump($match_id);
        endforeach;
		
		$Bet_forms = Bet_form::whereIn('match_id' , $whereID)
// ->where('bet_type' , "1x2")
                ->get();

        foreach ( $Bet_forms as $form ):
// single bet
		
        if ( $form->bet->status != 0 ):
                continue;
            endif;

            if ( $form->bet->type == 1 ) {
                if ( $form->status == 'CANCL' OR $match->status == 'POSTP' OR $form->status == 'DELETED' OR $form->status == 'INT' OR $match->status == 'ABAN' ) {

                    $form->update(array(
                        'result_status' => 1 ,
                    ));
                    $form->bet->update(array(
                        'effective_odd' => 1 ,
                        'status' => 1
                    ));
                    $this->depositStake($form->bet);
                }
                else {
                    $win = $this->RowDeterminationResult($form , $sortedByMatchID);
//					var_dump($win);

                    if ( $win ) {
//						var_dump($win);
                        
// Deposite the stake of bet to the user's account
						if($win == 1){
							if($this->cancelBet($form->bet)){
								$form->update(array(
								'result_status' => 1 ,
								));
								$form->bet->update(array(
									'pay_stake_status' => 1,
									'status' => 1
								));
							}	
						}
						else{
							if($this->depositStake($form->bet)){
								$form->update(array(
								'result_status' => 1 ,
								));
								$form->bet->update(array(
									'pay_stake_status' => 1,
									'status' => 1
								));
							}	
						}
                        
                    }
                    else {
                        $form->update(array(
                            'result_status' => 2 ,
                        ));
                        $form->bet->update(array(
                            'status' => 2
                        ));
                        $this->affiliate($form);
                    }
                }
            }
// For mix bets
            else {
                $forms = $form->bet->bet_form;

                if ( $form->status == 'CANCL' OR $match->status == 'ABAN' OR $match->status == 'POSTP' OR $form->status == 'DELETED' OR $form->status == 'INT' OR $match->status == 'DELAYED' OR $match->status == 'AWARDED' ) {

                    $form->bet->update(
                            array(
                                'effective_odd' => $form->bet->effective_odd / $form->odd ,
                            )
                    );
                    $form->update(array(
                        'result_status' => 1 ,
                        'odd' => 1 ,
                        'status' => 'FT'
                    ));
                    if ( $this->isMixMatchesFinalTime($forms , $sortedByMatchID) ) {
                        if ( $this->DeterminationResult($forms , $sortedByMatchID) ) {
// Deposite the stake of bet to the user's account
                            $this->depositStake($form->bet);
// status = 1 : wining and settled
                            $form->bet->update(array( 'status' => 1 ));
                        }
                        else {
                            $form->bet->update(array( 'status' => 2 ));
                            $this->affiliate($form);
                        }
                    }
                }
                else {
                    if ( $form->status == 'FT' OR $form->status == 'FT_PEN' ) {

// determine the result of Mix bets
                        $win = $this->RowDeterminationResult($form , $sortedByMatchID);
                        if ( $win == true || $win == 1 ) {
                            $form->update([
                                'result_status' => 1
                            ]);
                        }
                        else {
                            $form->update([
                                'result_status' => 2
                            ]);
                        }

                        if ( $this->isMixMatchesFinalTime($forms , $sortedByMatchID) ) {
                            if ( $this->DeterminationResult($forms , $sortedByMatchID) ) {
// Deposite the stake of bet to the user's account
                                $this->depositStake($form->bet);
// status = 1 : wining and settled
                                $form->bet->update(array( 'status' => 1 ));
                            }
                            else {
                                $form->bet->update(array( 'status' => 2 ));
                                $this->affiliate($form);
                            }
                        }
                        else {
// not all finaled
                            continue;
                        }
                    }
                    else {
                        continue;
                    }
                }
            }
        endforeach;
    }

    public function checkResultMatch ( $match_id , $user_id ) {

        $this->load->eloquent('Bet');
        $this->load->eloquent('Bet_form');

        $Bets = Bet_form::where('match_id' , $match_id)->get();
        foreach ( $Bets as $form ):
            if ( $form->bet->status == 1 ):
                continue;
            endif;
            $this->checkResultUpComingId($match_id , null , true);
        endforeach;
        redirect(site_url(ADMIN_PATH . '/bets/bets/view/' . $user_id));
    }

    /**
     * Check for final result of Bets 
     */
    public function checkResultUpComingId ( $id , $user_id = null , $bulk = false ) {

        $resultInclude = array(
            'localTeam' , 'visitorTeam' , 'odds'
        );
        $matches = $this->CI->soccerama->matches($resultInclude)->byId($id);
//dd($matches);
        $sortedByMatchID = array();
        /**
         * organize and sort the data structure of matches
         */
        $sortedByMatchID[$matches->id] = $matches;
        ksort($sortedByMatchID , SORT_NUMERIC);

        $this->load->eloquent('Bet');
        $this->load->eloquent('Bet_form');
        $whereID = array();
        foreach ( $sortedByMatchID as $match_id => $match ):
            if ( $match->status == 'FT' ) {
// we must know each matche's updated status for checking the bet's result specialy for mix types
                Bet_form::where('match_id' , $match_id)->update([
                    'status' => $match->status ,
                    'home_score_ft' => $match->home_score ,
                    'away_score_ft' => $match->away_score ,
                ]);
                $whereID[] = $match_id;
            }
            elseif ( $match->status == 'AET' OR $match->status == 'FT_PEN' OR $match->status == 'ET' ) {

                $ftt = explode("-" , $match->ft_score);

                Bet_form::where('match_id' , $match_id)->update([
                    'status' => 'FT' ,
                    'home_score_ft' => $ftt[0] ,
                    'away_score_ft' => $ftt[1] ,
                ]);
                $whereID[] = $match_id;
            }
            elseif ( $match->status == 'POSTP' OR $match->status == 'ABAN' OR $match->status == 'CANCL' OR $match->status == 'DELETED' ) {
//                Bet_form::where('match_id' , $match_id)->update(array( 'odd' => 1 , 'status' => $match->status ));
                $whereID[] = $match_id;
            }
        endforeach;

        $Bet_forms = Bet_form::whereIn('match_id' , $whereID)
// ->where('bet_type' , "1x2")
                ->get();
        foreach ( $Bet_forms as $form ):
// single bet
            if ( $form->bet->status == 1 ):
                continue;
            endif;
            if ( $form->bet->type == 1 ) {

                if ( $form->status == 'CANCL' OR $match->status == 'ABAN' OR $match->status == 'POSTP' OR $form->status == 'DELETED' OR $form->status == 'INT' ) {

                    $form->update(array(
                        'result_status' => 1 ,
                    ));
                    $form->bet->update(array(
                        'effective_odd' => 1 ,
                        'status' => 1
                    ));
                    $this->depositStake($form->bet);
                }
                else {
                    $win = $this->RowDeterminationResult($form , $sortedByMatchID);
                    if ( $win ) {
                        $form->update(array(
                            'result_status' => 1 ,
                        ));
                        $form->bet->update(array(
                            'status' => 1
                        ));
// Deposite the stake of bet to the user's account
                        $this->depositStake($form->bet);
                    }
                    else {
                        $form->update(array(
                            'result_status' => 2 ,
                        ));
                        $form->bet->update(array(
                            'status' => 2
                        ));
                    }
                }
            }
// For mix bets
            else {
                $forms = $form->bet->bet_form;

                if ( $form->status == 'CANCL' OR $match->status == 'POSTP' OR $form->status == 'DELETED' OR $form->status == 'INT' OR $match->status == 'DELAYED' OR $match->status == 'ABAN' OR $match->status == 'AWARDED' ) {

                    $form->bet->update(
                            array(
                                'effective_odd' => $form->bet->effective_odd / $form->odd ,
                            )
                    );

                    $form->update(array(
                        'result_status' => 1 ,
                        'odd' => 1 ,
                        'status' => 'FT'
                    ));
                }
                else {
                    if ( $form->status == 'FT' OR $form->status == 'FT_PEN' ) {


// determine the result of Mix bets
                        $win = $this->RowDeterminationResult($form , $sortedByMatchID);

                        if ( $win == true ) {
                            $form->update([
                                'result_status' => 1
                            ]);
                        }
                        else {
                            $form->update([
                                'result_status' => 2
                            ]);
                            continue;
                        }

                        if ( $this->isMixMatchesFinalTimeManual($forms , $sortedByMatchID) ) {
                            if ( $this->DeterminationResult($forms , $sortedByMatchID) ) {
// Deposite the stake of bet to the user's account
                                $this->depositStake($form->bet);
// status = 1 : wining and settled
                                $form->bet->update(array( 'status' => 1 ));
                            }
                            else {
                                $form->bet->update(array( 'status' => 2 ));
                            }
                        }
                        else {
// not all finaled
                            continue;
                        }
                    }
                    else {
                        continue;
                    }
                }
            }
        endforeach;
        if ( $user_id AND $bulk === false )
            redirect(site_url(ADMIN_PATH . '/bets/bets/view/' . $user_id));
        elseif ( $bulk )
            return true;
    }

    /**
     * Check for final result of Bets 
     */
    public function checkResultInplay () {
        $matches = $this->getInplayOddsOnline();

        $sortedByMatchID = array();

        /**
         * organize and sort the data structure of matches
         */
        foreach ( $matches as $item ) {
            if ( !property_exists($item , "start_time") OR ! property_exists($item , "state") ) {
                $item->start_time = "";
                $item->state = "";
            }
            $mkTimeMatch = mktime(date('H' , strtotime($item->start_time)) , date('i' , strtotime($item->start_time)) , date('s' , strtotime($item->start_time)) , date('m' , strtotime($item->start_time)) , date('d' , strtotime($item->start_time)) , date('Y' , strtotime($item->start_time)));

            $diff = time() - $mkTimeMatch;
            if ( ( $diff > 3400 && $diff < 70000 && $item->break_point > 0 && $item->state != 1015 && $item->break_point != 120 ) OR ( $item->state == 1017 OR $item->break_point == 90) ):
                $sortedByMatchID[$item->id] = $item;
            endif;
        }

        ksort($sortedByMatchID , SORT_NUMERIC);

        $this->load->eloquent('Bet');
        $this->load->eloquent('Bet_form');

        $whereID = array();

        foreach ( $sortedByMatchID as $match_id => $match ):
// we must know each matche's updated status for checking the bet's result specialy for mix types
            $result = explode('-' , $sortedByMatchID[$match_id]->result);
            Bet_form::where('match_id' , $match_id)->update([
                'status' => 'FT' ,
                'home_score_ft' => $match->teams->home->goals ,
                'away_score_ft' => $match->teams->away->goals ,
            ]);
            $whereID[] = $match_id;
        endforeach;
        $Bet_forms = Bet_form::whereIn('match_id' , $whereID)
                ->where('bookmaker_id' , 404)
                ->get();
        foreach ( $Bet_forms as $form ):
// single bet
            if ( $form->bet->status != 0 ):
                continue;
            endif;
            $result = [$sortedByMatchID[$form->match_id]->teams->home->goals , $sortedByMatchID[$form->match_id]->teams->away->goals ];

            if ( $form->bet->type == 1 ) {

                if ( $form->bet_type == '1x2' OR $form->bet_type == 'Fulltime Result' ) {
                    $whatsup = $this->inPlayRowDetermineResult($form , $result);
                }
                else {
// other types of bets
                    $whatsup = $this->detectWinnerOtherOdds($form , $result);
                }
                if ( $whatsup == 1 ) {

                    $form->update(array(
                        'result_status' => 1 ,
                    ));
                    $form->bet->update(array(
                        'status' => 1
                    ));
// Deposite the stake of bet to the user's account
                    $this->depositStake($form->bet);
                }
// draw no bet
                elseif ( $whatsup == 2 ) {

                    $form->update(array(
                        'result_status' => 1 ,
                    ));
                    $form->bet->update(array(
                        'status' => 1 ,
                        'effective_odd' => 1
                    ));
// Deposite the stake of bet to the user's account
                    $this->depositStake($form->bet);
                }
                else {
                    $form->update(array(
                        'result_status' => 2 ,
                    ));
                    $form->bet->update(array(
                        'status' => 2
                    ));
                    $this->affiliate($form);
                }
            }
// For mix bets
            else {

                $forms = $form->bet->bet_form;

                $win = false;
// determine the result of Mix bets
//if The Fulltime Result is the type of bet
                if ( $form->bet_type == '1x2' OR $form->bet_type == 'Fulltime Result' ) {
                    $win = $this->inPlayRowDetermineResult($form , $result);
                }// other types of bets
                else {
                    $win = $this->detectWinnerOtherOdds($form , $result);
                }
                if ( $win == 1 ) {
                    $form->update([
                        'result_status' => 1
                    ]);
                }
                elseif ( $win == 2 ) {

                    $form->update(array(
                        'result_status' => 1 ,
                    ));
                    $form->bet->update(array(
                        'effective_odd' => $form->bet->effective_odd / $form->odd ,
                    ));
                }
                else {
                    $form->update([
                        'result_status' => 2
                    ]);
                }
                if ( $this->allInplaySolved($forms) ) {
                    if ( $this->isInplayMixMatchesWon($forms) ) {
// Deposite the stake of bet to the user's account
                        $this->depositStake($form->bet);
// status = 1 : wining and settled
                        $form->bet->update(array( 'status' => 1 ));
                    }
                    else {
                        $this->affiliate($form);
                        $form->bet->update(array( 'status' => 2 ));
                    }
                }
                else {
                    continue;
                }
            }
        endforeach;
    }

    /**
     * detect Winner Other Odds
     * @param type $form
     * @param type $result
     * @return boolean
     */
    public function detectWinnerOtherOddsbyID ( $id ) {
        $this->load->eloquent('Bet');
        $this->load->eloquent('Bet_form');
        $form = Bet_form::where('match_id' , $id)->first();
        $result = array( $form->home_score_ft , $form->away_score_ft );
        $win = false;

        if ( $result[0] > $result[1] ) {
            $winner = $form->home_team;
        }
        elseif ( $result[0] < $result[1] ) {
            $winner = $form->away_team;
        }
        else
            $winner = 'Draw';
//dump($winner);
//dump($form->pick);

        if ( $form->bet_type == 'Match Goals' ) {
            $goals = ( int ) $result[0] + ( int ) $result[1];
            $OverUnder = explode(' ' , $form->pick);
            if ( ( float ) $OverUnder[1] < ( float ) $goals OR ( float ) $OverUnder[1] == ( float ) $goals )
                $matchGoalResult = 'Over ' . $OverUnder[1];
            else
                $matchGoalResult = 'Under ' . $OverUnder[1];
            if ( $matchGoalResult == $form->pick )
                $win = 1;
            else
                $win = false;
        }elseif ( $form->bet_type == 'Double Chance' ) {
            if ( strpos($form->pick , $winner) === false )
                $win = false;
            else
                $win = 1;
        }elseif ( $form->bet_type == 'Draw No Bet' ) {
            if ( $winner == $form->pick )
                $win = 1;
            elseif ( $winner == 'Draw' )
                $win = 2;
            else
                $win = false;
        }
        elseif ( $form->bet_type == 'Goals Odd/Even' ) {
            $oddOrEven = (( int ) $result[0] + ( int ) $result[1]) % 2;
            if ( $oddOrEven == 0 AND $form->pick == 'Even' )
                $win = true;
            elseif ( $oddOrEven == 1 AND $form->pick == 'Odd' )
                $win = 1;
            else
                $win = false;
        }
        elseif ( $form->bet_type == 'Final Score' ) {
            $result_picked = explode('-' , $form->pick);
            if ( $result[0] == $result_picked[0] AND $result [1] == $result_picked[1] )
                $win = 1;
            else
                $win = false;
        }
        return $win;
    }
	
    public function detectWinnerOtherOdds ( $form , $result ) {
        $win = false;

        if ( $result[0] > $result[1] ) {
            $winner = $form->home_team;
			$winners = 'Home';
			$total_label = '1';
        }
        elseif ( $result[0] < $result[1] ) {
            $winner = $form->away_team;
			$winners = 'Away';
			$total_label = '2';
        }
        else{
			$winner = 'Draw';
			$total_label = 'X';
		}
            
		
		if ( $form->bet_type == '1X2'){
			if($form->pick == $total_label)
				$win = 1;
			else
				$win = false;
		}
        else if ( $form->bet_type == 'Match Goals' ) {
//			$win = $this->checkOverUnderLabel($form->pick,$result[0],$result[1]);
//            $goals = ( int ) $result[0] + ( int ) $result[1];

//            $OverUnder = explode(' ' , $form->pick);
//			var_dump(( float ) $OverUnder[2]);
//            if ( ( float ) $OverUnder[2] < ( float ) $goals OR ( float ) $OverUnder[2] == ( float ) $goals )
//                $matchGoalResult = 'Over : ' . $OverUnder[2];
//            else
//                $matchGoalResult = 'Under : ' . $OverUnder[2];
//			var_dump($matchGoalResult);
//			var_dump($form->pick);
//            if ( $matchGoalResult == $form->pick )
//                $win = 1;
//            else
//                $win = false;
        }elseif ( $form->bet_type == 'Double Chance' ) {
            if ( strpos($form->pick , $winner) !== false || strpos($form->pick , $winners) !== false )
                $win = 1;
            else
                $win = false;
        } elseif ( $form->bet_type == 'Result / Both Teams To Score' ) {

            if ( strpos($form->pick , $winner) === false OR ( ($result[0] == 0 OR $result [1] == 0) AND strpos('& Yes' , $form->pick)) OR ( ($result[0] > 0 OR $result [1] > 0) AND strpos('& No' , $form->pick)) )
                $win = false;
            elseif ( strpos($form->pick , $winner) !== false AND ( ($result[0] %