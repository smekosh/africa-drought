<!doctype html>
<html>
    <head>
        <title></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Noto+Sans:400,700,700italic,400italic|Noto+Serif:400,400italic,700italic,700&subset=latin,latin-ext" />
        <link rel="stylesheet" type="text/css" href="css/nouislider.min.css" />
        <link rel="stylesheet" type="text/css" href="css/jquery.fancybox.min.css" />
        <link rel="stylesheet" type="text/css" href="css/styles.css?434e97" />

        <script>
            // quickfix to provide parallax image to js/scripts.js as global var
            var px_title_image = '';
        </script>

    </head>
    <body id='countries'>

        <nav class="voa-masthead">
        
            <div class="voa-masthead-inner"><div class="voa-logo"><a href="//www.voanews.com" title="Return to the VOA News home page"><img alt="VOA" src="img/voa-logo_333333_60x25_2x.png" width="60" height="25" border="0"><h1><a href='//projects.voanews.com/africa-drought' class='hideable1'>Hunger Across Africa</a></h1><a class='main-nav hideable' href='news.php'>News Updates</a><a class='main-nav hideable' href='countries.php'>Affected Countries</a><a class='main-nav hideable' href='data.php'>Data & Graphics</a><a class='main-nav hideable' href='team.php'>Meet The Team</a>



            </div><div
            class="share-options">
                <ul>
                    <li><a title="Share on Facebook" href="https://www.facebook.com/dialog/share_open_graph?app_id={$fb_app_id}&amp;display=popup&amp;action_type=og.likes&amp;action_properties={$fb_action_properties|json_encode|escape:'url'}&amp;href={$canonical_url|escape:'url'}&amp;redirect_uri={$canonical_url|escape:'url'}" class="share-fb"><span class="scr">Share on Facebook</span></a></li>
                    <li><a title="Share on Twitter" href="https://twitter.com/intent/tweet?text={$twitter_share_text|escape:'url'}&amp;url={$canonical_url|escape:'url'}&amp;via={$twitter_username|replace:'@':''}&amp;related={$twitter_related|escape:'url'}" class="share-tw"><span class="scr">Share on Twitter</span></a></li><li class="language-dropdown">
                    <a class="language-toggle" title="Change Language" href="javascript:return(false);"><span class="scr">Languages</span></a>
                    <ul class="submenu languages" style="display: none;">
                        <li lang="pt"><a href="//www.voaportugues.com/p/6513.html">Português</a></li>
                        <li lang="fr"><a href="//www.voaafrique.com/p/6511.html">Français</a></li>
                        <li lang="ha"><a href="//www.voahausa.com/p/6512.html">Hausa</a></li>
                        <li lang="so"><a href="//www.voasomali.com/p/6506.html">Somali</a></li>
                        <li lang="ti"><a href="//tigrigna.voanews.com/p/5574.html">Tigrigna</a></li>
                        <li lang="om"><a href="//www.voaafaanoromoo.com/p/5577.html">Afaan Oromoo</a></li> 
                        <li lang="am"><a href="//amharic.voanews.com/p/5573.html">Amharic</a></li>
                        <li lang="rw"><a href="//www.radiyoyacuvoa.com/p/6507.html">Kinyarwanda/Kirundi</a></li>
                        <li lang="sn"><a href="//www.voashona.com/p/6510.html">Shona</a></li>
                        <li lang="nr"><a href="//www.voandebele.com/p/6508.html">Ndebele</a></li>
                        <li lang="en"><a href="//www.voazimbabwe.com/p/6509.html">Zimbabwe (English)</a></li>
                    </ul>
                </li>
                </ul>
            </div></div>
        </nav>




<!--

            <div class="container">
                <div class="row">
                    <div class='col-sm-12'>

                    <div class="table-responsive">


<table id='chartA' class="table  table-header-rotated">
  <thead>
    <tr></tr> 
  </thead>
  <tbody>
    <tr></tr>
  </tbody>
</table>
</div>

                </div>
            </div>
        </div>


-->


        <div class='site-nav'>
            <div class='container'>
                <div class = 'row'>
                    <div class='col-sm-12'>
                        <nav>
                            <h6>Menu</h6>
                            <a href="news.php" style="opacity: 1;"><span>News Updates</span></a><a href="countries.php" style="opacity: 1;"><span>Affected Countries</span></a><a href='data.php'><span>Data & Graphics</span></a><a href="team.php" style="opacity: 1;"><span>Meet the Team</span></a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>


            <div class="container">
                <div class="row">
                    <div class='col-sm-10 col-sm-offset-1'>
        <section id='infographic-intro'>
            <header><h4>Country Profiles</h4></header>
            <p>Across Africa, famine threatens up to 14 million people. Up to 41 million additional people face severe food insecurity. In many of these nations, other risk factors, including armed conflict, diease and gaps in humanitarian funding, put even more lives in peril.</p>
        </section>
                </div>
            </div>
        </div>



        <div class='wrapper-infographic'>
        </div>


            <div class="container">
                <div class="row">
                    <div class='col-sm-10 col-sm-offset-1'>
        <section id='data-sources'>
            <header><h4>Data Sources</h4></header>
            <p>IPC data from FEWS.net (May, 2017).</p>
            <p>People at risk data from a FEWS outlook analysis by the Food and Agriculture Organization of the United Nations (March, 2017).</p>
            <p>Conflict death data from the Armed Conflict Location and Event Data Project&#8217;s "Realtime Africa" dataset (May, 2017).</p>
            <p>Funding gap data from the UN Office for the Coordination of Humanitarian Affairs (May, 2017).</p>
        </section>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-sheetrock/1.1.4/dist/sheetrock.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.5/handlebars.min.js"></script>
        <script src="js/parallax.js"></script>
        <script src="js/wNumb.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/scripts.js?1123"></script>

    </body>
</html>