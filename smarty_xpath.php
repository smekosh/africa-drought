<?php

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
