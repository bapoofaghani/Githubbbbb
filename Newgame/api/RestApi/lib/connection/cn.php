<?php 
require_once __DIR__ . "/../../../../../config.php";

$db = new MysqliDb (Array (
    'host' => DB_HOST,
    'username' => DB_USER,
    'password' => DB_PASS,
    'db'=> DB_NAME,
    'charset' => 'utf8'));
