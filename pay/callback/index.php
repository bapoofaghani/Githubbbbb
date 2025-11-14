<?php
function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}

function Cashme($i){
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

$sql = 'SELECT * FROM users WHERE id='.$i;  
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
function Dataman($a,$i){
$servername = "localhost";
$username = "gangb740_123";
$password = "wwKHMBdiY4";
$dbname = "gangb740_123";
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$sql = "UPDATE users SET cash='$a' WHERE id=$i";
if ($conn->query($sql) === TRUE) {
  return "Record updated successfully";
} else {
return 'ds';
}

$conn->close();
}


$url = 'https://centralapi.org/webservice/basic/verify.php';
$randomNumber = $_GET['orderid'];
$data = array(
  'api_key'      => '62c29c38c8770a745212e25fa380a354',
  'orderId'      => $_GET['orderid'],

);
$options = array(
  'http' => array(
    'method'  => 'POST',
    'content' => json_encode( $data ),
    'header'=>  "Content-Type: application/json\r\n" .
                "Accept: application/json\r\n"
    )
);

$context  = stream_context_create( $options );
$result = file_get_contents( $url, false, $context );
$response = json_decode($result,ture);
$check = $response['success'];
if($check == 'true'){
$c = file_get_contents("../idpay/$randomNumber/$randomNumber.txt");
  if ($c == null){
  }else{
  $cash = Cashme($c);
  $newCrj = $response['data']['amount'];
  $newcash = $cash + $newCrj ;
  Dataman($newcash,$c);
  file_put_contents("../idpay/$randomNumber/$randomNumber.txt",null);
  }
}
else{
file_put_contents("../idpay/$randomNumber/$randomNumber.txt",null);
rmdir("../idpay/$randomNumber");
 Redirect('../users/login');
}
