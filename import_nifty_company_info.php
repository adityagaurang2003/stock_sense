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
    $series = $json['metadata']['series'];
    $symbol = $json['metadata']['symbol'];
    $isin = $json['metadata']['isin'];
    $status = $json['metadata']['status'];
    $listingDate = $json['metadata']['listingDate'];
    $pdSectorInd = $json['metadata']['pdSectorInd'];
    $industry_info = $json['metadata']['industry'];
    $industryinfo_id = get_industry_info_id($industry_info);
    insert_company_info($industryinfo_id,$company_name,$series,$symbol,$isin,$status,$listingDate,$pdSectorInd);
}

function insert_company_info($industryinfo_id,$company_name,$series,$symbol,$isin,$status,$listingDate,$pdSectorInd) {
	try{
            DB::insert('company_info', array(
                'industryinfo_id' => $industryinfo_id,
                'company_name' => $company_name,
                'series' => $series,
                'symbol' => $symbol,
                'isin' => $isin,
                'status' => $status,
                'listingDate' => $listingDate,
                'pdSectorInd' => $pdSectorInd,
            ));
            echo $company_name . PHP_EOL;
        } catch(MeekroDBException $e) {
            echo $e->getMessage() ; // something about duplicate keys
        }
}

function get_industry_info_id($industry_info) {
    $industry_info = DB::queryFirstRow("SELECT * FROM industry_info WHERE basic_industry=%s", $industry_info);
    
    return $industry_info['industryinfo_id'];
}
?>