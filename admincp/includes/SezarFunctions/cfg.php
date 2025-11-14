<?php
require_once __DIR__ . "/../../../config.php";
include 'Database.php';
$db = dbInit( 'mysql:charset=utf8;host=' . DB_HOST, DB_NAME, DB_USER, DB_PASS);
$cn = @mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
?>