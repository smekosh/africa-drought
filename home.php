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
$entries_raw = json_decode(file_get_contents("data/spreadsheet.json"), true);

// separate these entries by "Placement" field
$entries = array(
    "featured" => array(),
    "causes" => array(),
    "solutions" => array(),
    "other" => array()
);

foreach( $entries_raw["Sheet1"] as $k => $v ) {

    // in case the placement column is inexplicably missing, default to 'other'
    if( !isset( $v["Placement"]) ) $v["Placement"] = "";

    switch( strtoupper(trim($v["Placement"])) ) {
        case 'C': $entries["causes"][] = $v; break;
        case 'S': $entries["solutions"][] = $v; break;
        case '': $entries["other"][] = $v; break;

        // featured items are sorted by their intval, a dirty numerical trick
        default: $entries["featured"][intval($v["Placement"])] = $v; break;
    }
}

// rekey the featured array since it relies on a dirty numerical trick
$entries["featured"] = array_values($entries["featured"]);

$smarty->assign( "entries", $entries );



$smarty->display( '04-africa-drought.tpl' );
