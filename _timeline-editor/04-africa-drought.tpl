{strip}

{$fb_app_id = '490219017808002'}

{$canonical_url = 'http://projects.voanews.com/africa-drought/'}
{$voa_homepage_url = 'http://www.voanews.com/'}
{$twitter_share_text = 'Millions in Africa lack access to enough food. VOA provides ongoing coverage of this critical story.'}
{$twitter_username = '@VOANews'}
{$twitter_related = ''}

{assign var="fb_action_properties" value=['object'=>$canonical_url]}

{/strip}<!doctype html>
<html>
    <head>
        <title>{$slides[0].title} :: {$slides[0].title_tagline}</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="canonical" href="http://projects.voanews.com/africa-drought/" />
    <link type="image/x-icon" rel="icon" href="http://www.voanews.com/img/voa/favicon.ico" />
    <link rel="image_src" href="{$slides[0].title_image}" />


    <!-- for Google -->
    <meta name="description" content="{$slides[0].title_tagline}"/>
    <meta name="keywords" content="Africa, drought, famine, Somalia, South Sudan, Zimbabwe, Nigeria" />
    <meta name="author" content="Salem Solomon" />

    <!-- for Facebook -->
    <meta property="og:locale" content="en_US">
    <meta property="og:type" content="website" />
    <meta property="og:title" content="{$slides[0].title}" />
    <meta property="og:description" content="{$slides[0].title_tagline}" />
    <meta property="og:image" content="{$slides[0].title_image}" />
    <meta property="og:url" content="http://projects.voanews.com/africa-drought/" />

    <!-- for Twitter -->
    <meta property="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@voanews">
    <meta name="twitter:creator" content="@salem_solomon">
    <meta property="twitter:title" content="{$slides[0].title}">
    <meta property="twitter:description" content="{$slides[0].title_tagline}">
    <meta property="twitter:image" content="{$slides[0].title_image}">
    <meta name="twitter:url" content="http://projects.voanews.com/africa-drought/" />

    <meta name="DISPLAYDATE" content="April 6, 2017" />
    <meta itemprop="dateModified" content="2017-04-06" />
    <meta itemprop="datePublished" content="2017-04-06" />

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Noto+Sans:400,700,700italic,400italic|Noto+Serif:400,400italic,700italic,700&subset=latin,latin-ext" />

    <link rel="stylesheet" type="text/css" href="css/jquery.fancybox.min.css" />
    <link rel="stylesheet" type="text/css" href="css/nouislider.min.css" />
    <link rel="stylesheet" type="text/css" href="css/styles.css?ts={$smarty.now}" />

    <style type="text/css">
    .share-fb { background-image: url(img/fa-fb_50_333333.png); }
    .share-tw { background-image: url(img/fa-tw_50_333333.png); }
    </style>
    
    {include file="crazyegg.tpl"}

    </head>

    <body>

    {include file="metrics.tpl"}

    <script type="text/javascript">
    (function(a,b,c,d){
    a='//tags.tiqcdn.com/utag/bbg/voa-nonpangea/prod/utag.js';
    b=document;c='script';d=b.createElement(c);d.src=a;d.type='text/java'+c;d.async=true;
    a=b.getElementsByTagName(c)[0];a.parentNode.insertBefore(d,a);
    })();
    </script>

    <script>
    // quickfix to provide parallax image to js/scripts.js as global var
    var px_title_image = {$slides[0].title_image|json_encode};
    </script>

    <nav class="voa-masthead">
        <div class="voa-masthead-inner"><div class="voa-logo"><a href="{$voa_homepage_url}" title="Return to the VOA News home page"><img alt="VOA" src="img/voa-logo_333333_60x25_2x.png" width="60" height="25" border="0" /></a></div><div
        class="share-options">
            <ul>
                <li><a title="Share on Facebook" href="https://www.facebook.com/dialog/share_open_graph?app_id={$fb_app_id}&amp;display=popup&amp;action_type=og.likes&amp;action_properties={$fb_action_properties|json_encode|escape:'url'}&amp;href={$canonical_url|escape:'url'}&amp;redirect_uri={$canonical_url|escape:'url'}" class="share-fb"><span class="scr">Share on Facebook</span></a></li>
                <li><a title="Share on Twitter" href="https://twitter.com/intent/tweet?text={$twitter_share_text|escape:'url'}&amp;url={$canonical_url|escape:'url'}&amp;via={$twitter_username|replace:'@':''}&amp;related={$twitter_related|escape:'url'}" class="share-tw"><span class="scr">Share on Twitter</span></a></li>
                <li class="language-dropdown">
                    <a class="language-toggle" title="Change Language" href="javascript:return(false);"><span class="scr">Languages</span></a>
                    <ul class="submenu languages" style="display: none;">
                        <li lang="pt"><a href="http://www.voaportugues.com/p/6513.html">Português</a></li>
                        <li lang="fr"><a href="http://www.voaafrique.com/p/6511.html">Français</a></li>
                        <li lang="ha"><a href="http://www.voahausa.com/p/6512.html">Hausa</a></li>
                        <li lang="so"><a href="http://www.voasomali.com/p/6506.html">Somali</a></li>
                        <li lang="ti"><a href="http://tigrigna.voanews.com/p/5574.html">Tigrigna</a></li>
                        <li lang="om"><a href="http://www.voaafaanoromoo.com/p/5577.html">Afaan Oromoo</a></li> 
                        <li lang="am"><a href="http://amharic.voanews.com/p/5573.html">Amharic</a></li>
                        <!--<li lang="rw"><a href="http://www.radiyoyacuvoa.com/p/6507.html">Kinyarwanda/Kirundi</a></li>-->
                        <li lang="sn"><a href="http://www.voashona.com/p/6510.html">Shona</a></li>
                        <li lang="nr"><a href="http://www.voandebele.com/p/6508.html">Ndebele</a></li>
                        <li lang="en"><a href="http://www.voazimbabwe.com/p/6509.html">Zimbabwe (English)</a></li>
                    </ul>
                </li>
            </ul>
        </div></div>
    </nav>

    <div id="parallax-window-1" class="parallax">
        <header>
            <h1>{$slides[0].title}</h1>
            <h2>{$slides[0].title_tagline}</h2>
        </header>
    </div>

    {*<!--
            <div class='container'>
                <div class='row'>
                    <div class='col-md-12'>
                    <header>
                    <nav>
                        <ul>
                            <li>
                                <a href='#'>Overview</a>
                            </li>
                            <li>
                                <a href='#'>Latest News</a>
                            </li>
                            <li>
                                <a href='#'>Data</a>
                            </li>
                            <li>
                                <a href='#'>Agencies</a>
                            </li>
                            <li>
                                <a href='#'>The Team</a>
                            </li>
                        </ul>
                    </nav>
                    </header>
                    </div>
                </div>
            </div>
    -->*}

        <div class='container'>
            <div class='row'>
                <div class='col-md-12'>
                    <header id='news-ticker'>
                        <h5>The Latest Headlines</h5>
                        <div id="quote-container">
                            <ol class='stories'>
                                {foreach from=$entries.other item=entry }
                                    {if $entry@index < 5}
                                    <div id="quote{$entry@index}" class="quote"><a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a></div>
                                    {/if}
                                {/foreach}
                            </ol>
                        </div>
                    </header>
                </div>
            </div>
        </div>    

        <div class='wrapper'>
            <div class='container'>
                <div class='row'>
                    <div class='col-sm-10 col-sm-offset-1'>
                        <p class='lead'>{$slides[0].content|strip_tags}</p>
                    </div>
                </div>
            </div>
        </div>

        {$entry=$entries.featured[0]}
                <div class='container'>

{if $entry.Type == 'Video'}

                    <div class='row top-story'>
                        <div class='col-sm-6 col-sm-offset-1'>
                            <a href='{$entry.youtube}' data-fancybox ='http://www.voanews.com{$entry.Link}'><img class='img-responsive' src='img/video.png' style='background-image: url("{$entry.Photo}"); background-size: 100% 100%;'></a>
                        </div>
                        <div class='col-sm-4'>
                            <span class='pubdate'>{$entry.Date}</span> 
                            <span class='video'>Video Report</span>
                            <h1 class='featured-video'><a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a></h1>
                            <span class='byline'>By {$entry.Byline}</span>
                            <p class='lead-video'>{$entry.Description} <a href='http://www.voanews.com{$entry.Link}'>Watch now</a>.</p>
                        </div>
                    </div>

{/if} 

{if $entry.Type != 'Video'}

                    <div class='row top-story'>
                        <div class='col-sm-6 col-sm-offset-1'>
                            <img class='img-responsive' src='{$entry.Photo}'>
                        </div>
                        <div class='col-sm-4'>
                            <span class='pubdate'>{$entry.Date}</span>
                            <h1 class='featured-video'><a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a></h1>
                            <span class='byline'>By {$entry.Byline}</span>
                            <p class='lead-video'>{$entry.Description} <a href='http://www.voanews.com{$entry.Link}'>Read more</a>.</p>
                        </div>
                    </div>

{/if}                    

                    <div class='row more-top'>
        {foreach from=$entries.featured item=$entry}
            {if $entry@index > 0 }
                        <div class='col-sm-5 {if $entry@index==1}col-sm-offset-1{/if}'>
                            <img class='img-responsive' src='{$entry.Photo}'>
                            <span class='pubdate'>{$entry.Date}</span>
                            <h1 class='featured-video'><a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a></h1>
                            <span class='byline'>By {$entry.Byline}</span>
                            <p class='lead-video'>{$entry.Description} <a href='http://www.voanews.com{$entry.Link}'>Read more.</a></p>
                        </div>
            {/if}
        {/foreach}
                    </div>
                </div>






<div class='row'>
<div class='col-sm-5 col-sm-offset-1'>

<ol class='stories'>
    {foreach from=$entries.other item=entry }
        {if $entry@index < 3}
        <li><span class='pubdate'>{$entry.Date}</span>
        <a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a>
        <span class='byline'>By {$entry.Byline}</span>
        </li>
        {/if}
    {/foreach}
</ol>

</div>
<div class='col-sm-5'>
<ol class='stories'>
    {foreach from=$entries.other item=entry }
        {if $entry@index > 2 && $entry@index < 6}
        <li><span class='pubdate'>{$entry.Date}</span>
        <a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a>
        <span class='byline'>By {$entry.Byline}</span>
        </li>
        {/if}
    {/foreach}
</ol>
</div>
</div>
</div>

        <div id='mapping-the-threat' class='wrapper'>
            <div class='container'>
                <div class="row">
                    <div class='col-sm-12'>
                        <h3>Mapping the Threat</h3>
                    </div>
                    <div class="col-sm-5">
                        {$slides[6].content}
                    </div>
                    <div class="col-sm-7">
                        <div class = 'combined-map'>
                                <img class='img-responsive africa-map' src='img/africa.gif'>
                                <img class='img-responsive africa-map country p1' src='img/region-1.gif'>
                                <img class='img-responsive africa-map country p1 p2' src='img/region-2.gif'>
                                <img class='img-responsive africa-map country p2' src='img/region-3.gif'>
                                <img class='img-responsive africa-map country p1 p2 p3' src='img/region-4.gif'>
                                <img class='img-responsive africa-map country p2 p3' src='img/region-5.gif'>
                                <img class='img-responsive africa-map country p3' src='img/region-6.gif'>
                                <img class='img-responsive africa-map country p1 p2 p3 p4' src='img/region-7.gif'>
                                <img class='img-responsive africa-map country p2 p3 p4' src='img/region-8.gif'>
                                <img class='img-responsive africa-map country p2 p3 p4 p5' src='img/region-9.gif'>
                            <div id='slider'></div>
                            {$slides[11].content}
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class='container'>
            <div class='row'>
                <div class='col-sm-5 col-sm-offset-1'>
                    <div class = 'mini-section'>
                        <h3>{$slides[9].title}</h3>
                        <p class='note'>{$slides[9].content|strip_tags}</p>
                    </div>
                    <ol class='stories'>
                        {foreach from=$entries.causes item=entry }
                        <li><span class='pubdate'>{$entry.Date}</span><a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a>
                        <span class='byline'>By {$entry.Byline}</span>
                        </li>
                        {/foreach}
                    </ol>
                </div>
                <div class='col-sm-5'>
                    <div class = 'mini-section'>
                        <h3>{$slides[10].title}</h3>
                        <p class='note'>{$slides[10].content|strip_tags}</p>
                    </div>
                    <ol class='stories'>
                        {foreach from=$entries.solutions item=entry }
                        <li><span class='pubdate'>{$entry.Date}</span><a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a>
                        <span class='byline'>By {$entry.Byline}</span>
                        </li>
                        {/foreach}
                    </ol>
                </div>
            </div>
        </div>

        <div class='wrapper-region-reports'>
            <div class='container'>
                {$slides[5].content}
            </div>
        </div>

        <div class='wrapper-footer'>
            <div class='container'>
                <div class='row'>
                    <div class='col-sm-7'>
                        <h3>{$slides[1].title}</h3>
                        <p>{$slides[1].content}</p>
                    </div>
                    <div class='col-sm-5'>
                        <h3>{$slides[2].title}</h3>
                        <p>{$slides[2].content}</p>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
        <script src="js/parallax.js"></script>
        <script src="js/wNumb.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/scripts.js?ts={$smarty.now}"></script>
    </body>
</html>