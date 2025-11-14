<?php
require_once __DIR__ . "/../../config.php";

class ConfigDB{
	protected $servername = DB_HOST;
	protected $username = DB_USER;
	protected $password = DB_PASS;
	protected $dbname = DB_NAME;
}
?>