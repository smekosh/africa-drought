





<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>{$slides[0].title} :: {$slides[0].title_tagline}</title>


    <link rel="canonical" href="http://projects.voanews.com/xxxxxxxxxxxxxxxxx/" />
    <link type="image/x-icon" rel="icon" href="http://www.voanews.com/img/voa/favicon.ico" />
    <link rel="image_src" href="http://www.voanews.com/MediaAssets2/projects/voa_graphics/2016__new-voters/img/first-time-voters.jpg" />


	<!-- for Google -->
	<meta name="description" content="{$slides[0].content|strip_tags}"/>
	<meta name="keywords" content="Donald Trump, Mississippi River, America, United States of America" />
	<meta name="author" content="Deepak Dobhal and Heather Murdock" />

	<!-- for Facebook -->
	<meta property="og:locale" content="en_US">
	<meta property="og:type" content="website" />
	<meta property="og:title" content="{$slides[0].title}" />
	<meta property="og:description" content="{$slides[0].content|strip_tags}" />
	<meta property="og:image" content="http://www.voanews.com/MediaAssets2/projects/voa_graphics/2016__new-voters/img/first-time-voters.jpg" />
	<meta property="og:url" content="http://projects.voanews.com/" />

	<!-- for Twitter -->
	<meta property="twitter:card" content="summary_large_image">
	<meta name="twitter:site" content="@voanews">
	<meta name="twitter:creator" content="@BrianWmson">
	<meta property="twitter:title" content="{$slides[0].title}">
	<meta property="twitter:description" content="{$slides[0].content|strip_tags}">
	<meta property="twitter:image" content="http://www.voanews.com/MediaAssets2/projects/voa_graphics/2016__new-voters/img/first-time-voters.jpg">
    <meta name="twitter:url" content="http://projects.voanews.com/" />


    <meta name="DISPLAYDATE" content="October 6, 2017" />
    <meta itemprop="dateModified" content="2017-10-06" />
    <meta itemprop="datePublished" content="2017-10-06" />




	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">


	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script type="text/javascript" src="//www.voanews.com/MediaAssets2/projects/voa_graphics/resources/jquery.smartmenus.min.js"></script>

	<script type="text/javascript" src="//www.voanews.com/MediaAssets2/projects/voa_graphics/resources/jquery.waypoints.min.js"></script>
	<script type="text/javascript" src="//www.voanews.com/MediaAssets2/projects/voa_graphics/resources/jquery.sticky.js"></script>

	<script type="text/javascript" src='//www.voanews.com/MediaAssets2/projects/voa_graphics/resources/leaflet/js/leaflet.js'></script>
	<link rel="stylesheet" type="text/css" href="//www.voanews.com/MediaAssets2/projects/voa_graphics/resources/leaflet/css/leaflet.css">

	<script src="//projects.voanews.com/off-the-highway/js/scripts.js"></script>
	<script type="text/javascript" src="//projects.voanews.com/off-the-highway/js/leaflet_numbered_markers.js?v1a"></script>
	<link rel="stylesheet" type="text/css" href="//projects.voanews.com/off-the-highway/css/all.css">
	<!-- <link rel="stylesheet" type="text/css" href="css/bengali.css"> -->

	<style type="text/css">
	</style>

	<script type="text/javascript">
		var language = "english";//This may reference spreadsheet worksheets and translations.

		$(document).ready(function(){
			$("#closeWarning").click(function(){
				console.log("close the warning box");
				$(".voa__publish-warning").toggle();
			});
		})
	</script>

</head>
<body class="">
{include file="2017/metrics.tpl"}


	<div class="voa__project english">

		<div class="voa__navbar" style="z-index: 9995;">
			<div class="voa__grid__full">
				<div class="voa__grid">
					<a href="http://www.voanews.com" class="voa__navbar__link"><div class="voa__navbar__logo"></div></a><a href="river.html" class="voa__navbar__title">{$slides[0].title}</a>

					<div id="menuButton" class="voa__navbar__toggle"></div>

					<nav id="main-nav" role="navigation" class="main-menu-nav">
						<ul id="main-menu" class="sm sm-clean" data-smartmenus-id="14762810590939192">

							<li><a id="shareTwitter" class="social-share-link twitter" href="javascript:void(0);"><div class="social-icon"></div><span class="social-share-text">Share on Twitter</span></a>
							<li><a id="shareFacebook" class="social-share-link facebook" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fprojects.voanews.com%2F"><div class="social-icon"></div><span class="social-share-text">Share on Facebook</span></a>
						</ul>
					</nav>
				</div>
			</div>
		</div>




		<section id="titleSlide" class="voa__section__full-width voa__section__title" style="background-image: url('{$slides[0].title_image}'); z-index: 9996; position: relative;">
			<div class="voa__title-card__shadow" style="z-index: 9994"></div>

			<div class="voa__grid__full">

				<div class="voa__title-label" style="position: absolute; width: 100%; top: 20px; max-width: 1280px;">
					<h3 class="voa__kicker" style="background-color: #000; display: table; margin: 0 auto; text-align: center; font-size: 18px;">{$slides[0].title_special_report}</h3>
				</div>
				<div class="voa__title-card" style="">
					<div class="voa__grid__full">
						<div class="voa__grid">
							<h1 class="voa__title" style="color: #FFF; text-transform: uppercase;">{$slides[0].title}</h1>
							<h3 class="voa__deck" style="text-transform: none;">{$slides[0].title_tagline}</h3>
						</div>
					</div>
				</div>

			</div>
		</section>

		<section class="voa__section" style="position: relative; z-index: 9994; background-color: #FFF; padding-top: 20px;">
			<div class="voa__grid">
				<div class="voa__project-title" style="padding: 30px 0 10px 0;">
					<h3 class="voa__graphic__readin">{$slides[0].content|strip_tags}</h3>
				</div>
			</div>
		</section>



		<div class="voa__publish-warning">
			<h3 id="closeWarning" class="voa__publish-warning__close-button">[X]</h3>
			<h3>WORK IN PROGRESS (english)</h3>
			<p>This project is still under development. Please do not share outside of the project team.</p>
		</div>





		<section id="voa__profile-grid" class="voa__section__full-width show" style="z-index: 9994; position: relative; background-color: #FFF; border: none; padding-top: 10px; padding-bottom: 30px; /*box-shadow: 0px 7px 5px rgba(20,20,20,.3)*/">
				<div class="voa__grid__full">
					<div class="voa__grid">
						<h2 style="text-transform: uppercase; margin-bottom: 15px; color: #7270c1; text-align: center; ">{$slides[0].title_in_their_words}</h2>
					</div>
				</div>
				<div class="voa__flex-grid" style="padding: 0;">


	{assign var="counter" value=0}
	{foreach from=array_reverse($slides) item=slide}
				
		{if $slide.series == "video" && $counter<6 && $slide.publish=="yes"}


					<div class="voa__profile">
						<a href="post__searching-for-a-steady-job.html">
							<div class="voa__profile__photo__container" style="position: relative;">
								

			{if $slide.video_thumbnail!=""}
								<img src="{$slide.video_thumbnail}" class="voa__profile__photo">
			{else}
								<img src="http://placehold.it/460x260" class="voa__profile__photo"/>
			{/if}

								<div class="voa__profile__icon" style=""></div>
							</div>
							<div class="voa__profile__text">
								<p class="voa__profile__quotation">{$slide.video_quotation}</p>
								<h3 class="voa__profile__quotation__attribution">{$slide.video_name}, <span class="job">{$slide.video_occupation}</span></h3>
							</div>
						</a>
					</div><!--
					-->
		{$counter = $counter + 1}
		{/if}
	{/foreach}




				</div>
				<div class="voa__grid__full">
					<div class="voa__grid">
						<a href="#" id="showMoreMobile" class="voa__show-profiles__mobile">Show more</a>
					</div>
				</div>
		</section>



		<section class="voa__section" style="">
			<div class="voa__grid__full">
					<div class="map__shell">
						<div id="map" class="map__container"></div>
						<div id="mapAreaOfDetail" class="map__container__area-of-detail"></div>
					</div>
					<div class="voa__updates show-mobile" style="border-right: 1px solid #F1F1F1;padding-bottom: 50px;">

{assign var="counter" value=0}
{foreach from=array_reverse($slides) item=slide }
	{if $slide.series == "story" && $slide.publish=="yes"}

		{if $counter==0}

							<a id="galesvillewisconsin" class="voa__stop" href="post__remembering-better-times.html">
								<h4 class="voa__label">{$slide.video_city}</h4>

			{if $slide.video_thumbnail!=""}
								<img src="{$slide.video_thumbnail}" />
			{elseif $slide.video_banner!=""}
								<img src="{$slide.video_banner}" />
			{else}
								<img src="http://placehold.it/720x480" />
			{/if}

								
								<h1 style="font-size: 3rem;">{$slide.title}</h1>
								<p>{$slide.video_description_short} <span class="voa__read-more">Read more</span></p>
							</a>

		{elseif $counter<=2}
							<a id="trempealeauwisconsin" class="voa__stop" href="post__big-government-drives-big-suspicion.html">
								<div class="voa__grid__full">
									<h4 class="voa__label voa__stop__dateline">{$slide.video_city}</h4>
			{if $slide.video_thumbnail!=""}
									<img src="{$slide.video_thumbnail}" class="voa__stop__thumbnail"/>
			{else}
									<img src="http://placehold.it/460x320" class="voa__stop__thumbnail"/>
			{/if}
									<div class=" voa__stop__description">
											<h2>{$slide.title}</h2>
											<p>{$slide.video_description_short} <span class="voa__read-more">Read more</span></p>
									</div>
								</div>
							</a>
		{/if}
		{$counter = $counter + 1}

	{/if}
{/foreach}
					</div>
			</div>
		</section>




		<div class="voa__footer-nav">

			<ul class="voa__footer-nav__toggle">
				<li><a id="hideMapMobile" class="current list" href="javascript:void(0);">Stories</a></li><li><a id="showMapMobile" class="map" href="javascript:void(0);">Map</a></li>
			</ul>

		</div>


	</div><!-- .voa__project -->

<script type="text/javascript">
	var sampleData=[

	{foreach from=$slides item=slide}
				
		{if $slide.series == "video" || $slide.series == "story"}

		{
			"featuredStory":    "TRUE",
			"currentStory":     "FALSE",
			"storyTitle":       "{$slide.title}",
			"city":             "{$slide.video_city}",
			"url":              "post__the-trickling-down-of-fake-news.html",
			"image":            "{$slide.video_thumbnail}",
			"description":      "{$slide.video_description_short}",
			"lat":              "{$slide.video_latitude}",
			"lng":              "{$slide.video_longitude}"
		},

		{/if}
	{/foreach}

	];

</script>

</body>
</html>