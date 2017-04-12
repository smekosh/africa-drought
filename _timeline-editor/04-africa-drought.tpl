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

    <link rel="stylesheet" type="text/css" href="css/styles.css?ts={$smarty.now}" />
    <link rel="stylesheet" type="text/css" href="css/nouislider.min.css" />


    <style type="text/css">
    .share-fb { background-image: url(img/fa-fb_50_333333.png); }
    .share-tw { background-image: url(img/fa-tw_50_333333.png); }
    </style>

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

            <nav class="voa-masthead">
                <div class="voa-masthead-inner"><div class="voa-logo"><a href="{$voa_homepage_url}" title="Return to the VOA News home page"><img alt="VOA" src="img/voa-logo_333333_60x25_2x.png" width="60" height="25" border="0" /></a></div><div
                class="share-options">
                    <ul>
                        <li><a title="Share on Facebook" href="https://www.facebook.com/dialog/share_open_graph?app_id={$fb_app_id}&amp;display=popup&amp;action_type=og.likes&amp;action_properties={$fb_action_properties|json_encode|escape:'url'}&amp;href={$canonical_url|escape:'url'}&amp;redirect_uri={$canonical_url|escape:'url'}" class="share-fb"><span class="scr">Share on Facebook</span></a></li>
                        <li><a title="Share on Twitter" href="https://twitter.com/intent/tweet?text={$twitter_share_text|escape:'url'}&amp;url={$canonical_url|escape:'url'}&amp;via={$twitter_username|replace:'@':''}&amp;related={$twitter_related|escape:'url'}" class="share-tw"><span class="scr">Share on Twitter</span></a></li>
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
                    <div class='row top-story'>
                        <div class='col-sm-6 col-sm-offset-1'>
                            <img class='img-responsive' src='{$entry.Photo}'>
                        </div>
                        <div class='col-sm-4'>
                            <span class='pubdate'>{$entry.Date}</span>
                            <h1 class='featured-video'><a href='{$entry.Link}'>{$entry.Title}</a></h1>
                            <span class='byline'>By {$entry.Byline}</span>
                            <p class='lead-video'>{$entry.Description} <a href='{$entry.Link}'>Read more</a>.</p>
                        </div>
                    </div>

                    <div class='row more-top'>
        {foreach from=$entries.featured item=$entry}
            {if $entry@index > 0 }
                        <div class='col-sm-5 {if $entry@index==1}col-sm-offset-1{/if}'>
                            <img class='img-responsive' src='{$entry.Photo}'>
                            <span class='pubdate'>{$entry.Date}</span>
                            <h1 class='featured-video'><a href='{$entry.Link}'>{$entry.Title}</a></h1>
                            <span class='byline'>By {$entry.Byline}</span>
                            <p class='lead-video'>{$entry.Description} <a href='{$entry.Link}'>Read more.</a></p>
                        </div>
{*<!--
    video content type?

                            <div class="video-container"><iframe src='https://www.youtube.com/embed/4TDYtqbz4II' frameborder='0' allowfullscreen></iframe></div>
                            <span class='pubdate'>March 21, 2017</span>
                            <h1 class='featured-video'><a href='http://www.voanews.com/a/somaliland-hospital-cares-for-malnourished-from-drought/3784721.html'>Somaliland Hospital Cares for Malnourished From Drought</a></h1>
                            <span class='byline'>By Abdulaziz Osman</span>
                            <p class='lead-video'>As the breakaway republic of Somaliland grapples with a severe drought, medical workers are struggling to aid people left weakened by malnourishment and hunger. <a href='http://www.voanews.com/a/somaliland-hospital-cares-for-malnourished-from-drought/3784721.html'>Read more.</a>
                            </p>
-->*}
            {/if}
        {/foreach}
                    </div>
                </div>

        <div class='wrapper'>
            <div class='container'>
                <div class="row">
                    <div class='col-sm-12'>
                        <h3>Mapping the Threat</h3>
                    </div>
                    <div class="col-sm-5">
                        <h2>{$slides[6].title}</h2>
                        {$slides[6].content}
                    </div>
                    <div class="col-sm-7">
                        <div class = 'combined-map'>
                            <a href='https://www.fews.net/'>
                                <img class='img-responsive africa-map' src='img/africa.gif'>
                                <img class='img-responsive africa-map country p1' src='img/region-1.gif'>
                                <img class='img-responsive africa-map country p1 p2' src='img/region-2.gif'>
                                <img class='img-responsive africa-map country p1 p2 p3' src='img/region-3.gif'>
                                <img class='img-responsive africa-map country p2 p3' src='img/region-4.gif'>
                                <img class='img-responsive africa-map country p1 p2 p3 p4' src='img/region-5.gif'>
                                <img class='img-responsive africa-map country p2 p3 p4' src='img/region-6.gif'>
                                <img class='img-responsive africa-map country p2 p3 p4 p5' src='img/region-7.gif'>
                            </a>
                            <div id='slider'></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class='col-sm-12 description'>
                        <h3>{$slides[1].title}</h3>
                        {$slides[1].content}
                    </div>
                </div>
            </div>
        </div>

        <div class='container'>
            <div class='row'>
                <div class='col-sm-5 col-sm-offset-1'>
                    <div class = 'mini-section'>
                        <h3>{$slides[8].title}</h3>
                        <p class='note'>{$slides[8].title}</p>
                    </div>
                    <ol class='stories'>
                        {foreach from=$entries.other item=entry }
                            {if $entry@index < 5}
                            <li><span class='pubdate'>{$entry.Date}</span>
                            {if $entry@index == 0 && $entry.Photo != ""}
                            <img class='img-responsive' src='{$entry.Photo}'>
                            {/if}
                            <a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a>
                            <span class='byline'>By {$entry.Byline}</span>
                            </li>
                            {/if}
                        {/foreach}
                    </ol>
                </div>
                <div class='col-sm-5'>
                    <div class = 'mini-section'>
                        <h3>{$slides[9].title}</h3>
                        <p class='note'>{$slides[9].content}</p>
                    </div>
                    <ol class='stories'>
                        {foreach from=$entries.causes item=entry }

                        <li><span class='pubdate'>{$entry.Date}</span><a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a>
                        <span class='byline'>By {$entry.Byline}</span>
                        </li>
                        {/foreach}
                    </ol>
                    <div class = 'mini-section new-section'>
                        <h3>{$slides[10].title}</h3>
                        <p class='note'>{$slides[10].content}</p>
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
        <script>
            jQuery(document).ready(function () {
                $('#parallax-window-1').parallax({
                    imageSrc: '{$slides[0].title_image}',
                    speed: .75
                });
                var slider = document.getElementById('slider');
                noUiSlider.create(slider, {
                    start: [1, 5],
                    connect: true,
                    tooltips: true,
                    step: 1,
                    range: {
                        'min': 1,
                        'max': 5
                    },
                    format: wNumb({
                        decimals: 0,
                        prefix: 'Level ',
                    })
                });
                slider.noUiSlider.on('change', function(){
                    var start = slider.noUiSlider.get()[0];
                    var start = start.substring(start.length-1);
                    var end = slider.noUiSlider.get()[1];
                    var end = end.substring(end.length-1);
                    $('.combined-map img.country').each(function(index) {
                        var show = false;
                        for (var i = start; i <= end; i++) {
                            if ($(this).hasClass('p'+i)) {
                                show = true;
                                break;
                            }
                        }
                        if (show) {
                            if ($(this).css('display') == 'none') {
                                $(this).fadeIn();
                            }
                        } else if ($(this).css('display') != 'none') {
                                $(this).fadeOut();
                        }
                    });
                });
            });
        </script>
    </body>
</html>