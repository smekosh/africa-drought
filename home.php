<?php

 ini_set("display_startup_errors", 1);
 ini_set("display_errors", 1);


// require('smarty-3.1.30/libs/Smarty.class.php');

require( "vendor/autoload.php" );
require( "smarty_xpath.php" );

$smarty = new Smarty();
$smarty->setTemplateDir("./_timeline-editor/");




// data source 1: timeline editor
$data = json_decode(file_get_contents("data/slides.json"), true);
$data["options"] = (object)$data["options"];
foreach( $data as $key => $value ) {
    $smarty->assign( $key, $value );
}

// data source 2: google spreadsheet
$entries = json_decode(file_get_contents("data/spreadsheet.json"), true);
$smarty->assign( "entries", $entries );



$smarty->display( '04-africa-drought.tpl' );
