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
    $macro = $json['industryInfo']['macro'];
    $sector = $json['industryInfo']['sector'];
    $industry = $json['industryInfo']['industry'];
    $basicIndustry = $json['industryInfo']['basicIndustry'];
    insert_industry_info($macro,$sector,$industry,$basicIndustry);
}

function insert_industry_info($macro,$sector,$industry,$basicIndustry) {
	try{
            DB::insert('industry_info', array(
                'macro' => $macro,
                'sector' => $sector,
                'industry' => $industry,
                'basic_industry' => $basicIndustry
            ));
            echo $industry . PHP_EOL;
        } catch(MeekroDBException $e) {
            echo $e->getMessage() ; // something about duplicate keys
        }
    }
?>