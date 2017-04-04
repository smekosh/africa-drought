<?php
require( "vendor/autoload.php" );
$smarty = new Smarty();

function smarty_function_parsexpath($params, Smarty_Internal_Template &$template) {

    $html = mb_convert_encoding($params["input"], "HTML-ENTITIES", "UTF-8");
    $doc = new DOMDocument();
    @$doc->loadHTML($html);
    $xpath = new DOMXPath($doc);
    @$elements = $xpath->query($params["query"]);

    $ret = array();
    if( !$elements ) return(false);

    foreach( $elements as $element ) {
        $ret[] = $element->textContent;
    }

    $template->assign( $params["output"], $ret );
}

// data source 1: timeline editor
$data = json_decode(file_get_contents("data/slides.json"), true);
$data["options"] = (object)$data["options"];
foreach( $data as $key => $value ) {
    $smarty->assign( $key, $value );
}

// data source 2: google spreadsheet
$entries = json_decode(file_get_contents("data/spreadsheet.json"), true);
$smarty->assign( "entries", $entries );

$smarty->display( '_timeline-editor/04-africa-drought.tpl' );
