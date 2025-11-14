<?php
function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}

$url = 'https://centralapi.org/webservice/basic/getLink.php';
$randomNumber = rand();
$data = array(
  'api_key'      => '62c29c38c8770a745212e25fa380a354',
  'type'    => 'deposit',
  'userId'       => $_GET['userId'],
  'amount' => $_GET['amount'],
  'orderId'      => $randomNumber,
  'returnUrl'      => 'https://ostadbet.com/pay/callback?orderid='.$randomNumber,

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
$link = $response['data']['redirectUrl'];
mkdir("../idpay/$randomNumber");
file_put_contents('../idpay/'.$randomNumber."/$randomNumber.txt",$_GET['userId']);
Redirect($link, false);
