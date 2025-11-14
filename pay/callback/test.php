<?php

function Cashme(){
$servername = "localhost";
$username = "gangb740_123";
$password = "wwKHMBdiY4";
$dbname = "gangb740_123";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = 'SELECT * FROM users WHERE id=2';  
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
   $arr[] = ['id'=>$row['id'],'cash'=>$row['cash']];
  }
} else {
}
  $ad = array('status'=>$arr,'count'=>count($arr));
  return json_encode($ad , 256|128);
$conn->close();
}


echo Cashme();