<?php
require_once("./libraries/meekrodb/db.class.php");
DB::$user = 'root';
DB::$password = '';
DB::$dbName = 'stock_sense';

$nifty_100_json_path = "../nse_scrapper/root_data/nseraw_data/NIFTY_100";
//$http_json_url = $_SERVER['REQUEST_SCHEME']  . "://" . $_SERVER['HTTP_HOST'] . '/nse_scrapper/root_data/nseraw_data/NIFTY_100/'; 
$http_json_url = 'http://localhost/nse_scrapper/root_data/nseraw_data/NIFTY_100/';
?>