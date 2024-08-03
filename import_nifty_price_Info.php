<?php
error_reporting(E_ALL); 
ini_set( 'display_errors', true );
require_once('config.php');
global $nifty_100_json_path;
$nifty_dir = glob($nifty_100_json_path. "/*");
// $dirPath contain path to directory whose files are to be listed 
foreach ($nifty_dir as $file) {
    $filePath = $nifty_100_json_path . '/' . $file;
    if (is_file($file)) {
        get_nifty_data(basename($file));
    }
}

function get_nifty_data($file) {
    global $http_json_url;
    $json_data = file_get_contents($http_json_url . $file);
    $json = json_decode($json_data, true);
    $company_name = $json['companyName'];
    $lastPrice = $json['priceInfo']['lastPrice'];
    $change = $json['priceInfo']['change'];
    $pChange = $json['priceInfo']['pChange'];
    $previousClose = $json['priceInfo']['previousClose'];
    $open = $json['priceInfo']['open'];
    $close = $json['priceInfo']['close'];
    $vwap = $json['priceInfo']['vwap'];
    $lowerCP = $json['priceInfo']['lowerCP'];
    $upperCP = $json['priceInfo']['upperCP'];
    $pPriceBand = $json['priceInfo']['pPriceBand'];
    $basePrice = $json['priceInfo']['basePrice'];
    $company_info_id = get_company_info_id($company_name);
    insert_price_info($company_info_id,$lastPrice,$change,$pChange,$previousClose,$open,$close,$vwap,$lowerCP,$upperCP,$pPriceBand,$basePrice);
}

function insert_price_info($company_info_id,$lastPrice,$change,$pChange,$previousClose,$open,$close,$vwap,$lowerCP,$upperCP,$pPriceBand,$basePrice) {
	try{
            DB::insert('price_info', array(
                'company_info_id' => $company_info_id,
                'lastPrice' => $lastPrice,
                'ichange' => $change,
                'pChange' => $pChange,
                'previousClose' => $previousClose,
                'open' => $open,
                'close' => $close,
                'vwap' => $vwap,
                'lowerCP' => $lowerCP,
                'upperCP' => $upperCP,
                'pPriceBand' => $pPriceBand,
                'basePrice' => $basePrice
            ));
            echo $company_info_id . PHP_EOL;
        } catch(MeekroDBException $e) {
            echo $e->getMessage() ; // something about duplicate keys
        }
}

function get_company_info_id($company_name) {
    $industry_info = DB::queryFirstRow("SELECT * FROM company_info WHERE company_name=%s", $company_name);
    
    return $industry_info['industryinfo_id'];
}
?>