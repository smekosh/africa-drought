<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>{$slides[0].title} :: {$slides[0].title_tagline}</title>


    <link rel="canonical" href="http://projects.voanews.com/africa-drought/" />
    <link type="image/x-icon" rel="icon" href="http://www.voanews.com/img/voa/favicon.ico" />
    <link rel="image_src" href="{$slides[0].title_image}" />


	<!-- for Google -->
	<meta name="description" content="{$slides[0].title_tagline}"/>
	<meta name="keywords" content="Africa, drought, famine, Somalia, Sudan, Zimbabwe," />
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




	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script type="text/javascript" src="http://www.voanews.com/MediaAssets2/projects/voa_graphics/resources/jquery.smartmenus.min.js"></script>
	<script type="text/javascript" src="http://d3js.org/d3.v3.min.js"></script>
	<script type="text/javascript" src='http://www.voanews.com/MediaAssets2/projects/voa_graphics/resources/tabletop.js'></script>
	<script type="text/javascript" src='http://www.voanews.com/MediaAssets2/projects/voa_graphics/resources/leaflet/js/leaflet.js'></script>
	<link rel="stylesheet" type="text/css" href="http://www.voanews.com/MediaAssets2/projects/voa_graphics/resources/leaflet/css/leaflet.css">

	<script src="js/scripts__timeline-editor.js"></script>
	<link rel="stylesheet" type="text/css" href="//projects.voanews.com/africa-drought/css/all.css?v1e">
	<!-- <link rel="stylesheet" type="text/css" href="css/bengali.css"> -->




	<style type="text/css">

	</style>


	<script type="text/javascript">
		var language = "english";//This may reference spreadsheet worksheets and translations.

		$(document).ready(function(){
			$("#closeWarning").click(function(){
				console.log("close the warning box");
				$(".voa__publish-warning").toggle();
			})
		})
	</script>

	<!-- https://support.google.com/webmasters/answer/189077?hl=en -->
	<!--
	<link hreflang="en" rel="alternate" href="http://projects.voanews.com/adrift-african-diaspora/" />
	<link hreflang="om" rel="alternate" href="http://projects.voanews.com/adrift-african-diaspora/afaan-oromoo/" />
	<link hreflang="am" rel="alternate" href="http://projects.voanews.com/adrift-african-diaspora/amharic/" />
	<link hreflang="fr" rel="alternate" href="http://projects.voanews.com/adrift-african-diaspora/french/" />
	-->
</head>
<body>
{*{include file="metrics.tpl"}*}

	<div class="voa__project english">

		<div class="voa__navbar clear">
			<div class="voa__grid__full">
				<div class="voa__grid">
					<a href="//www.voanews.com/" class="voa__navbar__link"><div class="voa__navbar__logo"></div></a>

					<div id="menuButton" class="voa__navbar__toggle"></div>

					<nav id="main-nav" role="navigation" class="main-menu-nav">
						<ul id="main-menu" class="sm sm-clean" data-smartmenus-id="14762810590939192">

							<li><a href="javascript:void(0);" class="has-submenu" id="sm-14762810590939192-1" aria-haspopup="true" aria-controls="sm-14762810590939192-2" aria-expanded="false"><span class="sub-arrow">+</span>{$slides[0].title_label_countries}</a>
								<ul id="sm-14762810590939192-2" role="group" aria-hidden="true" aria-labelledby="sm-14762810590939192-1" aria-expanded="false">
									<li><a href="#somalia">Somalia</a></li>
									<li><a href="#southsudan">South Sudan</a></li>
									<li><a href="#zimbabwe">Zimbabwe</a></li>
								</ul>
							</li>

							<li><a href="javascript:void(0);" class="has-submenu voa__navbar__language" id="" aria-haspopup="true" aria-controls="" aria-expanded="false"><div class="translation-icon"></div><span class="sub-arrow">+</span><span class="voa__no-tablet social-share-text ">{$slides[0].title_label_coverage}</span></a>
								<ul id="" role="group" aria-hidden="true" aria-labelledby="" aria-expanded="false">
									<li><a href="http://voaafaanoromoo.com">Afaan Oromoo</a></li>
									<li><a href="http://amharic.voanews.com/p/5573.html">አማርኛ</a></li>
									<li><a href="http://voaafrique.com">Français</a></li>
									<li><a href="http://voahausa.com">Hausa</a></li>
									<li><a href="http://radiyoyacuvoa.com">Kinyarwanda / Kirundi</a></li>
									<li><a href="http://voandebele.com">Ndebele</a></li>
									<li><a href="http://voaportugues.com">Português</a></li>
									<li><a href="http://voashona.com">Shona</a></li>
									<li><a href="http://voasomali.com">Soomaaliga</a></li>
									<li><a href="http://voaswahili.com">Kiswahili</a></li>
									<li><a href="http://tigrigna.voanews.com">ትግርኛ</a></li>
									<li><a href="http://voazimbabwe.com">Zimbabwe</a></li>
								</ul>
							</li>

							<li><a id="shareTwitter" class="social-share-link twitter" href="javascript:void(0);"><div class="social-icon"></div><span class="social-share-text">Share on Twitter</span></a></li>
							<li><a id="shareFacebook" class="social-share-link facebook" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fprojects.voanews.com%2F"><div class="social-icon"></div><span class="social-share-text">Share on Facebook</span></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="voa__navbar" style="z-index: 9997; height: 42px; background-color: #000;">
			<div class="voa__grid__full">
				<div class="voa__grid">
					<a href="#" class="voa__navbar__title" style="margin-left: 5%;">{$slides[0].title_label_nav}</a>
				</div>
			</div>
		</div>

		<section class="voa__section__full-width voa__section__title" style="background-image: url('{$slides[0].title_image}'); z-index: 9998; position: relative; min-height: auto; max-height: 300px; height: 300px; background-position: center 80%;">
			<div class="voa__title-card__shadow" style="z-index: 9994;"></div>

			<div class="voa__grid__full" style="margin: 0; padding: 0;">
				<div class="voa__grid">
					<div class="voa__title-card" style="text-align: center; width: 90%; z-index: 9995;">
						<h1 class="voa__title">{$slides[0].title}</h1>
						<h3 style="font-weight: normal; color: #FFF;">{$slides[0].title_tagline}</h3>
					</div>
				</div>
			</div>
		</section>


		<section class="voa__section">
			<div class="voa__grid">
				<div class="voa__project-title" style="margin: 40px 0;">
					<h3 class="voa__graphic__readin">{$slides[0].content|strip_tags}</h3>
				</div>
			</div>
		</section>



		<div class="voa__publish-warning">
			<h3 id="closeWarning" class="voa__publish-warning__close-button">[X]</h3>
			<h3>WORK IN PROGRESS</h3>
			<p>This project is still under development. Please do not share outside of the project team.</p>
		</div>



		<section class="voa__section" style="margin-bottom: 0;">
			<div class="voa__grid" style="margin-bottom: 0;">

				<div class="voa__grid__one-third voa__hang-right voa__grid__float">

					<h3 class="voa__label" style="margin-bottom: 10px; font-size: 16px;">{$slides[0].title_label_recent_headlines}</h3>


					<div id="recentHeadlines" class="">
						<!--This is where you'd loop over some recent headlines from the spreadsheet data-->
{foreach from=$entries.Sheet1 item=entry }
	{if $entry@index < 5}
		{$entry.Title}
	{/if}


{/foreach}
<pre>{*$entry|print_r *}</pre>

					</div>

				</div>

				<div class="voa__grid__two-thirds voa__rule wide-right voa__grid__float">
					<div id="map" class="map__container"></div>
				</div>

			</div>
		</section>

		<section class="voa__section" style="margin-bottom: 50px;">
			<div class="voa__grid">
				<div class="voa__grid__two-thirds voa__rule wide-right voa__grid__float" style="padding-top: 40px;">
					<div class="voa__featured-story" style="margin-bottom: 40px;">
						<h3 class="voa__label" style="font-size: 16px; margin-bottom: 5px;">Featured Story</h3>
						<h2 style="margin-bottom: 10px;">Headline goes here and here and herg</h2>
						<p class="voa__graphic__readin" style="line-height: 1.5; font-size: 16px;">This is not Somalia's first drought and it likely won't be its last. The government announced Saturday that 110 people had died in a two-day period due to drought-induced famine, particularly in the Bay and Bakol regions, highlighting the need not just for rapid emergency response to this crisis, but also long-term solutions to prevent food insecurity. <a href="">Read more</a></p>
					</div>

					<div class="voa__grid__full">
						<div class="voa__grid__one-half">
							<h3 class="voa__label" style="font-size: 16px; margin-bottom: 0;">Root causes</h3>
							<p><a href="">Civic Group: Above Normal Rainfall in Zimbabwe Not Worth Cheering</a></p>
							<p><a href="">Somali Cabinet to Include Drought Disaster Pos</a></p>
						</div>
						<div class="voa__grid__one-half">
							<h3 class="voa__label" style="font-size: 16px; margin-bottom: 0;">Responses and Solutions</h3>
							<p><a href="">Civic Group: Above Normal Rainfall in Zimbabwe Not Worth Cheering</a></p>
							<p><a href="">Somali Cabinet to Include Drought Disaster Pos</a></p>
						</div>
					</div>
				</div>
				<div class="voa__grid__one-third voa__hang-right voa__grid__float">
					<div class="video-container">
						<div class="embed-container"><iframe src="https://www.youtube.com/embed/dXYLMaJ8P0c" frameborder="0" allowfullscreen=""></iframe></div>
					</div>
					<h3>Headline goes here and here</h3>
					<p>This is not Somalia's first drought and it likely won't be its last. The government announced Saturday that 110 people had died in a two-day period due to drought-induced famine.</p>
				</div>
			</div>
		</section>


		<section class="voa__section__full-width" style="background-color: #f1f1f1; padding: 30px 0; margin: 0;">
			<div class="voa__grid__full">
				<div class="voa__grid">
					<h3 class="voa__label">Country profiles</h3>
				</div>

				<div class="voa__grid">

{foreach from=$slides item=slide }
	{if $slide.series == "country"}
					<div class="voa__grid__one-third voa__country-profile">
						<h3 class="voa__kicker">{$slide.title}</h3>

						<ul class="voa__stats">
							<li><span class="voa__paragraph-label" style="">Status:</span> {$slide.country_risk_level}</li>
							<li><span class="voa__paragraph-label" style="">Population:</span> {$slide.country_population}</li>
							<li><span class="voa__paragraph-label" style="">At risk:</span> XX%</li>
						</ul>

						<p>{$slide.content}</p>

						<div class="voa__related-links">
							<h4>{$slides[0].title_label_recent_headlines}</h4>

							<p><a href="#">This is a headline that goes here</a></p>
							<p><a href="#">This is also a headline that's' here</a></p>

						</div>
					</div>

	{/if}
{/foreach}
				</div>
			</div>
		</section>


		<section class="voa__section__full-width voa__footer dark">
			<div class="voa__grid__full">

				<div class="voa__grid">
					<!--<script type="text/javascript" src="http://tools.voanews2.com/fidget/view.php?id=224&js"></script>-->

					<div class="voa__grid__one-third voa__rule wide-right">

						<h3>{$slides[1].title}</h3>
						{$slides[1].content}

					</div><!-- .voa__credits -->

					<div class="voa__grid__one-third voa__rule wide-right">
						<h3>{$slides[2].title}</h3>
						{$slides[2].content}
					</div>

					<div class="voa__grid__one-third">
						<h3 style="margin-bottom: 15px;">On Twitter</h3>
						<div class="voa__twitter">
							<div class="voa__twitter__tweet">
								Loremx ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua. <a href="#">#FamineWatch</a>
							</div>
							<div class="voa__twitter__attribution">
								<img class="voa__mugshot--round" src="http://placehold.it/60x60" alt="Twitter image" style="float: left; max-width: 60px;"/>
								<div style="text-align: left; padding-left: 65px;">
									<h3 class="voa__twitter__name">Voice of America</h3>
									<h5 class="voa__twitter__handle"><a href="https://twitter.com/voanews">@VOANews</a></h5>
									<h5 class="voa__twitter__timestamp">Timestamp Sept 20XX</h5>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</section><!-- .voa__footer -->


	</div><!-- .voa__project -->
<script type="text/javascript">
	//var public_spreadsheet_url = 'https://docs.google.com/spreadsheets/d/1ONYDSbWz57kIRUEoe-rIsQjq69JelwayZdZ_eaZW2ZA/pubhtml';//This can also be defined in the JS.
	var mode = "editing";//"editing"; //"production";
	var dictionary = {};
</script>

</body>
</html>
