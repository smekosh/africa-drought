{*<!--

    look for $options->js_lang field

-->*}{$language_info =[
    "en" => ["abbreviation" => "en", "territory" => "US", "name" => "english", "service" => "VOA English", "service_short" => "ENG", "property_id" => "600", "url" => "http://voanews.com/", "direction" => "ltr", "translation" => ""],
    "ar" => ["abbreviation" => "ar", "territory" => "XX", "name" => "arabic", "service" => "VOA Arabic - rtl test", "service_short" => "AR", "property_id" => "XXX", "url" => "http://www.voanews.com/", "direction" => "rtl", "translation" => ""],
    "my" => ["abbreviation" => "my", "territory" => "XX", "name" => "burmese", "service" => "VOA Burmese", "service_short" => "BUR", "property_id" => "631", "url" => "http://burmese.voanews.com/", "direction" => "ltr", "translation" => ""],
    "ht" => ["abbreviation" => "ht", "territory" => "HTI", "name" => "creole", "service" => "VOA Creole", "service_short" => "CREO", "property_id" => "633", "url" => "http://http://www.voanouvel.com/", "direction" => "ltr", "translation" => ""],
    "prs" => ["abbreviation" => "prs", "territory" => "XX", "name" => "dari", "service" => "VOA Afghanistan", "service_short" => "AFDA", "property_id" => "601", "url" => "http://www.darivoa.com/", "direction" => "rtl", "translation" => ""],
    "id" => ["abbreviation" => "id", "territory" => "ID", "name" => "indonesian", "service" => "VOA Indonesian", "service_short" => "IND", "property_id" => "634", "url" => "http://www.voaindonesia.com/", "direction" => "ltr", "translation" => ""],
    "km" => ["abbreviation" => "km", "territory" => "XX", "name" => "khmer", "service" => "VOA Khmer", "service_short" => "KHM", "property_id" => "604", "url" => "http://khmer.voanews.com/", "direction" => "ltr", "translation" => "ខ្មែរ"],
    "ko" => ["abbreviation" => "ko", "territory" => "KO", "name" => "korean", "service" => "VOA Korean", "service_short" => "KOR", "property_id" => "635", "url" => "http://www.voakorea.com/", "direction" => "ltr", "translation" => ""],
    "lo" => ["abbreviation" => "en", "territory" => "LAO", "name" => "lao", "service" => "VOA Lao", "service_short" => "LAO", "property_id" => "636", "url" => "http://lao.voanews.com/", "direction" => "ltr", "translation" => "ລາວ"],
    "yue" => ["abbreviation" => "yue", "territory" => "KO", "name" => "cantonese", "service" => "VOA Cantonese", "service_short" => "CAN", "property_id" => "632", "url" => "http://www.voacantonese.com/", "direction" => "ltr", "translation" => "粤语"],
    "zh" => ["abbreviation" => "zh-cn", "territory" => "CH", "name" => "mandarin", "service" => "VOA Chinese", "service_short" => "MAN", "property_id" => "610", "url" => "http://www.voachinese.com/", "direction" => "ltr", "translation" => "國語"],
    "ps" => ["abbreviation" => "ps", "territory" => "XX", "name" => "pashto", "service" => "VOA Afghanistan", "service_short" => "AFPA", "property_id" => "602", "url" => "http://www.pashtovoa.com/", "direction" => "rtl", "translation" => ""],
    "per" => ["abbreviation" => "fa", "territory" => "XX", "name" => "persian", "service" => "VOA Persian", "service_short" => "PER", "property_id" => "611", "url" => "http://ir.voanews.com/", "direction" => "rtl", "translation" => ""],
    "ru" => ["abbreviation" => "ru", "territory" => "XX", "name" => "russian", "service" => "VOA Russian", "service_short" => "RU", "property_id" => "612", "url" => "http://www.golos-ameriki.ru/", "direction" => "ltr", "translation" => ""],
    "es" => ["abbreviation" => "es", "territory" => "MX", "name" => "spanish", "service" => "VOA Spanish", "service_short" => "SPA", "property_id" => "630", "url" => "http://www.voanoticias.com/", "direction" => "ltr", "translation" => ""],
    "th" => ["abbreviation" => "th", "territory" => "XX", "name" => "thai", "service" => "VOA Thai", "service_short" => "THAI", "property_id" => "637", "url" => "http://www.voathai.com/", "direction" => "ltr", "translation" => "ไทย"],
    "tr" => ["abbreviation" => "tr", "territory" => "XX", "name" => "turkish", "service" => "VOA Turkish", "service_short" => "TURK", "property_id" => "615", "url" => "http://www.amerikaninsesi.com/", "direction" => "ltr", "translation" => ""],
    "vi" => ["abbreviation" => "vi", "territory" => "VN", "name" => "vietnamese", "service" => "VOA Vietnamese", "service_short" => "VIE", "property_id" => "617", "url" => "http://www.voatiengviet.com/", "direction" => "ltr", "translation" => "Tiếng Việt"]
]}{if isset($want)}{if isset($want_language)}{$language_info[$want_language][$want]}{else}{$language_info[$options->language][$want]}{/if}{else}

<script type="text/javascript">
var utag_data = {
    entity:"VOA",
    language:"{$language_info[$options->language].name}",
    language_service:"{$language_info[$options->language].service}",
    short_language_service:"{$language_info[$options->language].service_short}",
    property_id:"{$language_info[$options->language].property_id}",
    platform:"Responsive",
    platform_short:"R",
    runs_js:"Yes",
    section:"Special Projects",
    english_section:"special-projects",
    page_title:"{$slides[0].title}",
    page_type:"interactive",
    page_name:"{$slides[0].title}",
    short_headline:"{$slides[0].title}",
    long_headline:"{$slides[0].title}",
    headline:"{$slides[0].title}",
    content_type:"interactive",
    pub_year:"{$slides[0].title_metrics_year}",
    pub_month:"{$slides[0].title_metrics_month}",
    pub_day:"{$slides[0].title_metrics_date}",
    pub_weekday:"{$slides[0].title_metrics_day}",
    byline:"{$slides[0].title_metrics_byline}",
    slug:"{$slides[0].title_metrics_slug}"
}
</script>

{/if}
