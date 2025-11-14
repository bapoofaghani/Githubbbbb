<?php

require __DIR__ . '/../config.php';
session_start();

class DB {
	
	private $servername = DB_SERVER;
	private $username = DB_USER;
	private $password = DB_PASS;
	private $dbname = DB_NAME;
	private $conn;
//	public function getDatabase() {
	    
//	  $site_config["site_title"]; 
	    
//	}
	public function __construct()
	{
		$this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
	}
	
	public function __destruct()
	{
		$this->conn->close();
	}
	
	public function multi_select( $table, $col, $col_name_arr, $col_content_arr)
	{
		if(!is_array($col_name_arr) || ! is_array($col_content_arr)){return "Invalid arguement, array require for arguement 3 and 4.";}
		
		$col_name_len = count($col_name_arr);
		$col_content_len = count($col_content_arr);
		
		if($col_name_len !== $col_content_len){ return "Error on condition."; }
		
		$query = "SELECT ".$col." FROM ". $table . " WHERE ";
		
		for($i = 0; $i < $col_name_len; $i++)
		{
			$query .= $col_name_arr[$i]."='" . $col_content_arr[$i] . "' ";
			if($i !== $col_name_len - 1 )
			{
			    $query .= " AND ";
			}
		}
		
		$query .= "LIMIT 1";
		
		$result = $this->conn->query($query);

		$obj = 0;
		
		if ($result->num_rows > 0) {
			
			$obj = $result->fetch_assoc();
			
		}
		
		return $obj;
		
	}
	
	public function select( $table, $col, $col_name, $col_content)
	{
		
		$query = "SELECT ".$col." FROM ". $table . " WHERE " . $col_name."='" . $col_content . "' LIMIT 1";
		
		$result = $this->conn->query($query);
		
		$obj = 0;
		
		if ($result->num_rows > 0)
		{
			$obj = $result->fetch_assoc();
		}
		
		return $obj;
	}
	
}
