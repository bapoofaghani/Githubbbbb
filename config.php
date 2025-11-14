<?php
!defined('RUNNING_IN_DOCKER') ? define('RUNNING_IN_DOCKER', getenv("RUNNING_IN_DOCKER") == "1") : '';
!defined('BASE_URL') ? define('BASE_URL', RUNNING_IN_DOCKER ? getenv("BASE_URL") : 'https://ostadbet.com') : '';
!defined('IS_HTTPS') ? define('IS_HTTPS', RUNNING_IN_DOCKER ? getenv("IS_HTTPS") : true) : '';
if (!isset($_SERVER['HTTPS']) and IS_HTTPS) {
	$_SERVER['HTTPS'] = 'on';
}
!defined('DOMAIN') ? define('DOMAIN', RUNNING_IN_DOCKER ? getenv("DOMAIN") : 'ostadbet.com') : '';
!defined('DB_HOST') ? define('DB_HOST', RUNNING_IN_DOCKER ? getenv("DB_HOST") : 'localhost') : '';
!defined('DB_USER') ? define('DB_USER', RUNNING_IN_DOCKER ? getenv("DB_USER") : 'gangb740_123') : '';
!defined('DB_PASS') ? define('DB_PASS', RUNNING_IN_DOCKER ? getenv("DB_PASS") : 'wwKHMBdiY4') : '';
!defined('DB_NAME') ? define('DB_NAME', RUNNING_IN_DOCKER ? getenv("DB_NAME") : 'gangb740_123') : '';
!defined('PORT_1') ? define('PORT_1', RUNNING_IN_DOCKER ? getenv("PORT_1") : 3700) : '';
!defined('PORT_2') ? define('PORT_2', RUNNING_IN_DOCKER ? getenv("PORT_2") : 3701) : '';
!defined('PORT_3') ? define('PORT_3', RUNNING_IN_DOCKER ? getenv("PORT_3") : 3702) : '';



!defined('ENVIRONMENT') ? define('ENVIRONMENT', 'develope') : '';
!defined('DS') ? define('DS', str_replace(array('/', '\\'), array('/', '/'), DIRECTORY_SEPARATOR)) : '';
!defined('FCPATH') ? define('FCPATH', dirname(__FILE__) . DS) : '';
!defined('APPPATH') ? define('APPPATH', FCPATH . 'application' . DS) : '';
!defined('VIEWPATH') ? define('VIEWPATH', APPPATH . 'views' . DS) : '';
!defined('MAIL_SENDER_NAME') ? define('MAIL_SENDER_NAME', 'sepehrbet') : '';
!defined('MAIL_SENDER_SERVER') ? define('MAIL_SENDER_SERVER', 'mail.sepehrbet.xyz') : '';
!defined('MAIL_SENDER_USERNAME') ? define('MAIL_SENDER_USERNAME', 'info@sepehrbet.xyz') : '';
!defined('MAIL_SENDER_PASSWORD') ? define('MAIL_SENDER_PASSWORD', 'jeqsFwt4BX') : '';
!defined('VENDOR_DIR') ? define('VENDOR_DIR', FCPATH . 'vendor' . DS) : '';
!defined('BASE_URL') ? define('BASE_URL', (isset($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) == 'on' ? 'https' : 'http') . '://' . $_SERVER['SERVER_NAME']) : '';
!defined('SELF') ? define('SELF' , pathinfo(__FILE__, PATHINFO_BASENAME)) : '';
!defined('BASEPATH') ? define('BASEPATH' , str_replace(array('/', '\\'), array('/', '/'), VENDOR_DIR . 'codeigniter/framework/system') . DS) : '';
!defined('SYSDIR') ? define('SYSDIR', 'system') : '';
!defined('SMS_USERNAME') ? define('SMS_USERNAME', 'kaperco777') : '';
!defined('SMS_PASSWORD') ? define('SMS_PASSWORD', '0000') : '';
!defined('SMS_DEDICATED_NUMBER') ? define('SMS_DEDICATED_NUMBER', '10004552684533') : '';
!defined('API_KEY') ? define('API_KEY', 'S4cqZDiQFqDfIXfLCD7CLne7QC0SqcmbcnufFSwWxWhRruoJkUBa7fTeKMjT') : '';
!defined('TIMEZONE') ? define('TIMEZONE', 'Asia/Tehran') : '';
!defined('ScriptChrst') ? define('ScriptChrst', 'utf-8') : '';
function_exists('ini_set') ? ini_set('display_errors', 'on') : '';
function_exists('error_reporting') ? error_reporting(0) : '';
empty(session_id()) ? session_start() : '';
function_exists('ini_set') ? ini_set('memory_limit', '1024M') : '';
function_exists('ini_set') ? ini_set('max_execution_time', '30') : '';
function_exists('date_default_timezone_set') ? date_default_timezone_set(TIMEZONE) : '';
header('Content-type: text/html; charset=utf8');
