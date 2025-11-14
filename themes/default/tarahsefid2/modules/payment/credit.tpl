<div class="more-pad">
    <div class="cell">
        <div class="container">
            <div class="maincontent">
                {include file="partials/dashboard_menu.tpl"}
                <div class="col-lg-10 col-md-9 col-sm-12 col-xs-12 content">
                    <header class="LandingMatchShow">
                        <h1>حساب خود را شارژ کنید</h1>
                    </header>
                    {if isset($error)}
                        <p style="color: red">{$error}</p>
                    {/if}
                    <section class="topup-content">

                        <p class="description text-black">برای شارژ حساب مبلغ مورد نظر خود را در فرم زیر وارد کنید و کلید پرداخت را بزنید.</p>
                        <div class="topup-form clearfix">
                            <div>
                                <form action="{site_url}payment/credit" method="post">
									 <div class="col-xs-12 centre">
    
										<div><br>
										<a id="pay_ir" href="javascript:;" class="item-2-box">
	<img src="/assets/default/tarahsefid2/images/cartbecart.jpg" style="width:400px; height:200px;" /></a>
	<a id="per_ir" href="javascript:;" class="item-2-box">
												<img src="/assets/default/tarahsefid2/images/perfket2.jpg" style="width:410px; height:177px;" /></a>

	</div>


                                                <input name="ptype" id="ptypee" class="hidden" style="display:none;" value="" data-method="0">
										
                                	</div>
								

<div class="col-lg-12 ">
							<div class="topup-form" id="main_form" style="display:none;">
								<section class="sitebox">
									<div class="normal-form">
										<h2 id="pay_title"></h2>
										<form action="{site_url}payment/credit" method="post">
											<input type="hidden" value="" id="type" name="type" />
											<input type="hidden" value="" id="ptype" name="ptype" />
											<div class="siteform">
												<div class="amountinput">
													<label id="pay_pa" class="label" for="evoucher_activation_code"></label>
													<input autocomplete="off" class="input ltrinput centre" name="amount" type="text" value="">
												</div>
												<input class="btn btn-primary floatright" type="submit" value="شارژ حساب">
											</div>
										</form>                     
									</div>
								</section>
							</div>
						</div>

	
									<!-- <div class="col-xs-12 centre amountinput kartbekart">										
										<label class="col-lg-2 col-md-2  col-sm-12 col-xs-12 label">شماره کارت جهت واریز</label>
										<input class="col-lg-8 col-md-8  col-sm-12 col-xs-12 input ltrinput centre" type="text" value="6273-8111-2439-3627" disabled>

										<span class="field-validation-valid error_message" data-valmsg-for="Amount" data-valmsg-replace="true"></span>
										<span class="error_message max_error"></span>
									</div>
									
									<div class="col-xs-12 centre amountinput kartbekart">										
										<label class="col-lg-2 col-md-2  col-sm-12 col-xs-12 label" >نام صاحب حساب</label>
										<input class="col-lg-8 col-md-8  col-sm-12 col-xs-12 input ltrinput centre" type="text" value="عاطفه شمرادی" disabled>
										
										<span class="field-validation-valid error_message" data-valmsg-for="Amount" data-valmsg-replace="true"></span>
										<span class="error_message max_error"></span>
									</div> -->
									
									<div class="col-xs-12 centre amountinput amount_box hidden">
										<label class="col-lg-2 col-md-2  col-sm-12 col-xs-12 label" for="Amount">مبلغ به تومان</label>
										<input autocomplete="off" class="col-lg-8 col-md-8  col-sm-12 col-xs-12 input ltrinput centre" data-val="true" data-val-number="The field مبلغ به ریال must be a number." data-val-range="حداقل مبلغ افزایش موجودی ۱۰۰۰ تومان است." data-val-range-max="2147483647" data-val-range-min="1000" data-val-regex="مبلغ به تومان باید با فرمت درست وارد شود. " data-val-regex-pattern="^\d+$" data-val-required="وارد کردن مبلغ به تومان الزامی است." id="Amount" name="amount" type="text" value="">

										<span class="field-validation-valid error_message" data-valmsg-for="Amount" data-valmsg-replace="true"></span>
										<span class="error_message max_error"></span>
                                	</div>

									<div class="col-xs-12 centre amountinput kartbekart">
										<label class="col-lg-2 col-md-2  col-sm-12 col-xs-12 label" for="Amount">شماره کارت شما</label>
										<input autocomplete="off" class="col-lg-8 col-md-8  col-sm-12 col-xs-12 input ltrinput centre" data-val="true" data-val-number="The field مبلغ به ریال must be a number." data-val-range="حداقل مبلغ افزایش موجودی ۱۰۰۰ تومان است." data-val-range-max="2147483647" data-val-range-min="1000" data-val-regex="مبلغ به تومان باید با فرمت درست وارد شود. " data-val-regex-pattern="^\d+$" data-val-required="وارد کردن مبلغ به تومان الزامی است." id="customer_card" name="customer_card" type="text" value="">

										<span class="field-validation-valid error_message" data-valmsg-for="Amount" data-valmsg-replace="true"></span>
										<span class="error_message max_error"></span>
									</div>
									 <div class="col-xs-12 centre amountinput kartbekart">
										<label class="col-lg-2 col-md-2  col-sm-12 col-xs-12 label" for="Amount">کد پیگیری</label>
										<input autocomplete="off" class="col-lg-8 col-md-8  col-sm-12 col-xs-12 input ltrinput centre" id="pay_code" name="pay_code" type="text" value="">

										<span class="field-validation-valid error_message" data-valmsg-for="Amount" data-valmsg-replace="true"></span>
										<span class="error_message max_error"></span>
									</div>

						
									
									
									
                                </form>  
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>

<script>
        $(document).ready(function () {
			$(".kartbekart").addClass('hidden');
            $(".methods").click(function (e) {
                e.preventDefault();
                $(".amount_box").removeClass('hidden');
		var method = $(this).attr("data-method");
                          });
        });
    </script>
<script type="text/javascript">
		TkStarFreamWork(document).ready(function(){
						TkStarFreamWork('#pay_ir').click(function(){
				TkStarFreamWork('#pay_title').html('درگاه مستقیم کارت به کارت');
				TkStarFreamWork('#pay_pa').html('مبلع را به تومان وارد نمایید');

				TkStarFreamWork('#type').val('ir');
				TkStarFreamWork('#ptype').val('4-3');
				TkStarFreamWork('#main_form').show(0);
				TkStarFreamWork('#cart_to_cart_form').hide(0);
			});

						TkStarFreamWork('#per_ir').click(function(){
				TkStarFreamWork('#pay_title').html('درگاه پرفکت مانی');
				TkStarFreamWork('#pay_pa').html('مبلع را به دلار وارد نمایید');

				TkStarFreamWork('#type').val('ir');
				TkStarFreamWork('#ptype').val('4-42');
				TkStarFreamWork('#main_form').show(0);
				TkStarFreamWork('#cart_to_cart_form').hide(0);
			});

		});
	</script>

 