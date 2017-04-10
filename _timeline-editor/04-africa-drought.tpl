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

        {foreach from=$entries.Sheet1 item=entry }
            {if $entry.Featured=="TRUE"}
                <div class='container'>
                    <div class='row top-story'>
                        <div class='col-sm-6 col-sm-offset-1'>
                            <img class='img-responsive' src='images/story.jpg'>
                        </div>
                        <div class='col-sm-4'>
                            <span class='pubdate'>March 21, 2017</span> 
                            <h1 class='featured-video'><a href='http://www.voanews.com/a/conflict-somalia-impacts-future-drought-resistance/3751638.html#'>Conflict in Somalia Impacts Future Drought Resistance</a></h1>
                            <span class='byline'>By Jill Craig</span>
                            <p class='lead-video'>The government announced Saturday that 110 people had died in a two-day period due to drought-induced famine, particularly in the Bay and Bakol regions, highlighting the need not just for rapid emergency response to this crisis, but also long-term solutions to prevent food insecurity. <a href='#'>Read more</a>.</p>
                        </div>
                    </div>
                    <div class='row more-top'>
                        <div class='col-sm-5 col-sm-offset-1'>
                            <div class="video-container"><iframe src='https://www.youtube.com/embed/4TDYtqbz4II' frameborder='0' allowfullscreen></iframe></div>
                            <span class='pubdate'>March 21, 2017</span>
                            <h1 class='featured-video'><a href='http://www.voanews.com/a/somaliland-hospital-cares-for-malnourished-from-drought/3784721.html'>Somaliland Hospital Cares for Malnourished From Drought</a></h1>
                            <span class='byline'>By Abdulaziz Osman</span>
                            <p class='lead-video'>As the breakaway republic of Somaliland grapples with a severe drought, medical workers are struggling to aid people left weakened by malnourishment and hunger. <a href='http://www.voanews.com/a/somaliland-hospital-cares-for-malnourished-from-drought/3784721.html'>Read more.</a>
                            </p>
                        </div>
                        <div class='col-sm-5'>
                            <img class='img-responsive' src='images/story2.jpg'>
                            <span class='pubdate'>March 21, 2017</span>
                            <h1 class='featured-video'><a href='http://www.voanews.com/a/somaliland-hospital-cares-for-malnourished-from-drought/3784721.html'>Somaliland Hospital Cares for Malnourished From Drought</a></h1>
                            <span class='byline'>By Abdulaziz Osman</span>
                            <p class='lead-video'>As the breakaway republic of Somaliland grapples with a severe drought, medical workers are struggling to aid people left weakened by malnourishment and hunger. <a href='http://www.voanews.com/a/somaliland-hospital-cares-for-malnourished-from-drought/3784721.html'>Read more.</a>
                            </p>
                        </div>
                    </div>
                </div>
                {break}
            {/if}
        {/foreach}

        <div class='wrapper'>
            <div class='container'>
                <div class="row">
                    <div class='col-sm-12'>
                        <h3>Mapping the Threat</h3>
                    </div>
                    <div class="col-sm-5">
                        <h2>The IPC Phases</h2>
                        <ol id='ipc-phases'>
                            <li id='phase1'><strong>Phase 1.</strong> Up to 20 percent of households must use unsustainable methods to meet essential food and non-food needs. Longterm, new strategies are needed to avert malnutrition.</li>
                            <li id='phase2'><strong>Phase 2.</strong> Despite humanitarian assistance, at least 20 percent of households cannot get enough food without meeting other non-food needs through unsustainable methods.</li>
                            <li id='phase3'><strong>Phase 3.</strong> Despite humanitarian assistance, at least 20 percent of households either experience stretches of acute malnutrition or must deplete assets to meet food needs, leading to gaps in food consumption.</li>
                            <li id='phase4'><strong>Phase 4.</strong> Despite humanitarian assistance, at least 20 percent of households either experience significant stretches of acute malnutrition and excess mortality or see the extreme loss of assets, leading to gaps in food consumption and acute malnutrition.</li>
                            <li id='phase5'><strong>Phase 5.</strong> Despite humanitarian assistance, at least 20 percent of households experience an extreme lack of food, leading to starvation and death. Phase 5 of the IPC represents the minimum threshold for famine. There are degrees of famine characterized by an increasing death rate and more rampant starvation.</li>
                        </ol>
                    </div>
                    <div class="col-sm-7">
                        <a href='https://www.fews.net/'><img class='img-responsive africa-map' src='images/full.gif'></a>
                    </div>
                </div>
                <div class="row">
                    <div class='col-sm-12 description'>
                        <h3>What the IPC Phases Mean</h3>
                        <p class='lead-video'>The Integrated Phase Classification scale defines levels of food insecurity. Each phase of the scale represents more urgent nutritional needs. At the low end, members of a community are only able to meet their basic nutritional needs through unsustainable methods. Long term changes are needed to avoid starvation and death. At the high end of the scale, starvation and death have already occurred. Immediate humanitarian assistance is needed, and long term strategies for sustainable food production and consumption must also be achieved.</p>
                        <p class='lead-video'>The IPC scale serves to both identify current humanitarian crises and call attention to crises likely to materialize in the absence of humanitarian assistance and/or better governance. The scale also shows that, once food insecurity reaches a certain level, suffering and loss of life cannot be prevented, even with humanitarian assistance.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class='container'>
            <div class='row'>
                <div class='col-sm-5 col-sm-offset-1'>
                    <div class = 'mini-section'>
                        <h3>Recent News</h3>
                        <p class='note'>VOA reporters across the continent provide up-to-date coverage of the crisis.</p>
                    </div>
                    <ol class='stories'>
                        {foreach from=$entries.Sheet1 item=entry }
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
                        <h3>Root Causes</h3>
                        <p class='note'>Explore the root causes and contributing factors behind Africa&#8217;s deadliest food shortages in years.</p>
                    </div>
                    <ol class='stories'>
                        {foreach from=$entries.Sheet1 item=entry }
                            {if $entry.Dimensions=="Cause"}
                        <li><span class='pubdate'>{$entry.Date}</span><a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a>
                        <span class='byline'>By {$entry.Byline}</span>
                        </li>
                            {/if}
                        {/foreach}
                    </ol>
                    <div class = 'mini-section new-section'>
                        <h3>Responses & Solutions</h3>
                        <p class='note'>Track emergency interventions and long-term remedies designed to save lives.</p>
                    </div>
                    <ol class='stories'>
                    {foreach from=$entries.Sheet1 item=entry }
                        {if $entry.Dimensions=="Response" && $entry@index < 3}
                    <li><span class='pubdate'>{$entry.Date}</span><a href='http://www.voanews.com{$entry.Link}'>{$entry.Title}</a>
                    <span class='byline'>By {$entry.Byline}</span>
                    </li>
                        {/if}
                    {/foreach}
                    </ol>
                </div>
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
        <script>
            jQuery(document).ready(function () {
                $('#parallax-window-1').parallax({
                    imageSrc: '{$slides[0].title_image}',
                    speed: .75
                });
            });
        </script>
    </body>
</html>
