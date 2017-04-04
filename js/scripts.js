//Grab the spreadsheet KEY from the URL bar (NOT from the published window)
var public_spreadsheet_url = '1L_r-CsGoAOEOIBxuUBq3k8Vob-h1JEToR0w64-ehlp8';
var map; //defined here for global access.



var debugMode = true;
// Basic function to replace console.log() statements so they can all be disabled as needed;
function logger(logString){
	if (debugMode){
		console.log(logString);
	}
}








// ============================
// |  Basic tabletopJS setup  |
// ============================
function loadSpreadsheet() {
	if ( mode == "editing") {
		Tabletop.init( { key: public_spreadsheet_url,
			callback: showInfo,
			simpleSheet: true } )
	/*
		//multisheet version: 
		Tabletop.init( { key: public_spreadsheet_url,
		 	callback: showInfo,
		 	wanted: [ "Sheet1" ] } )
		*/
	} else if ( mode == "production") {
		//buildPresidents(d3target);
		showInfo(bakedData);
	} else {
		console.log("You need to define the 'mode' ('editing' or 'production')");
	}
}
function showInfo(data, tabletop) {
//function showInfo(data) {
	logger("loaded spreadsheet data: ");
	logger(data);


	var stringHeadlines = "";
	var numberOfStories = 4;

	stringHeadlines += '<a href="http://www.voanews.com' + data[0].Link + '"><img src="http://placehold.it/640x360" />';
	stringHeadlines += '<h3 style="margin-bottom: 20px;">' + data[0].Title + '</h3></a>';

	for (var i = 1; i < numberOfStories; i++ ){
		stringHeadlines += '<p><a href="//www.voanews.com' + data[i].Link + '">' + data[i].Title + '</a></p>';
	}

	$("#recentHeadlines").html(stringHeadlines)
	/*
	//Handlebar templating
	var HRTemplate = Handlebars.compile($('#hr-template').html());
	$.each( data.Sheet1.elements, function(i, content) {
          var html = HRTemplate(content);
          $("#hr").append(html);
    })
    */


	/*
	// =====================================================
	// |  BAKE OUT THE DATA TO REMOVE TABLETOP DEPENDENCY  |
	// =====================================================
	if ( mode == "editing"){
		var numberOfFeatures = data[language].elements.length;
		var dictionary = {};

		var newData = {};
		newData[language] = {};
		newData[language].elements = [];
		for (var i = 0; i < numberOfFeatures; i++){
			if ( data[language].elements[i].featureGroup == "Group"){
				dictionary[data[language].elements[i].feature] = data[language].elements[i].translation;
			}
			//newData[language].elements[i] = {};
			//newData[language].elements[i].feature =      data[language].elements[i].feature;
			//newData[language].elements[i].featureGroup = data[language].elements[i].featureGroup;
		}

		var newDataString = JSON.stringify(newData);

		console.log("----- Paste the data below at the bottom of the .html file when you're ready to publish ---------------\n\n");
		console.log('var mode = "production";\nvar bakedData = ' + newDataString + ";\n\n");
		var dictionaryString = JSON.stringify(dictionary);
		console.log('var dictionary = ' + dictionaryString + ";\n")
	}
	*/

}



$(document).ready(function(){
	logger("Ready");

	//var map = L.map('map');
	// ===================
	// |  Dropdown menu  |
	// ===================
	$(function() {
		$('#main-menu').smartmenus({
			subMenusSubOffsetX: 1,
			subMenusSubOffsetY: -8
		});
	});

	$( "#menuButton" ).click(function() {
		logger("clicked menu toggle")
	  $( ".main-menu-nav").toggle();
	});

	$( ".main-menu-nav a").not(".has-submenu").click(function() {
	  $( ".main-menu-nav").hide();
	});

	$( ".voa__section__full-width" ).click(function() {
	  $( ".main-menu-nav").hide();
	});



	/*
	//=====================================================
	// |  Add support for query strings (for languages)   |
	//=====================================================
	function getParameterByName(name, url) {
		if (!url) url = window.location.href;
		name = name.replace(/[\[\]]/g, "\\$&");
		var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
		    results = regex.exec(url);
		if (!results) return null;
		if (!results[2]) return '';
		return decodeURIComponent(results[2].replace(/\+/g, " "));
	}

	// you'll need to use this after the document has loaded.
	languageQuery = getParameterByName('language');
	if (languageQuery && languageQuery!=""){
		language = languageQuery;
	}

	*/



	/*
	// ================================================
	// |  Opens a pop-up with twitter sharing dialog  |
	// ================================================
	$('#shareTwitter').click(function(){
		var url = "http://projects.voanews.com";
		var text = "Replace this with your text";
		window.open('http://twitter.com/share?url='+encodeURIComponent(url)+'&text='+encodeURIComponent(text), '', 'left=0,top=0,width=550,height=450,personalbar=0,toolbar=0,scrollbars=0,resizable=0');
	})
	*/



	// =====================================
	// |  load spreadsheet via tabletopJS  |
	// =====================================
	loadSpreadsheet();


	// =========================
	// |  Basic Leaflet setup  |
	// =========================
	var path = [];
	var marker;
	var myLayerGroup;




	//Choropleth map example: http://leafletjs.com/examples/choropleth.html
	// color scales: http://colorbrewer2.org/#type=sequential&scheme=OrRd&n=5

	//Adding styles based on values (choropleth)
	function setColorBasedOnValue (x) {
		return  x == 5 ? '#b30000' :
				x == 4 ? '#e34a33' :
				x == 3 ? '#fc8d59' :
				x == 2 ? '#fdcc8a' :
				x == 1 ? '#fef0d9' : '#a8cab2';
	}

	//Defining popup labels based on values
	function scaleValues(x) {
		return  x == 5 ? 'Famine' :
				x == 4 ? 'Emergency' :
				x == 3 ? 'Crisis' :
				x == 2 ? 'Stressed' :
				x == 1 ? 'Minimal' : x;
	}

	
	function styleBasedOnValue(feature){
		logger("feature.properties.ML1: " + feature.properties.ML1)
		return {
			stroke: true,
			fillColor: setColorBasedOnValue(feature.properties.ML1),
			weight: 1,
			opactity: .3,
			color: setColorBasedOnValue(feature.properties.ML1),
			fillOpacity: 1
		}
	}


	function zoomToFeature(e) {
		/*
		logger('zoomToFeature')
		logger(e.target.feature.properties.ML1)
		*/
		e.target.bindPopup("IPC status (ML1): " + scaleValues(this.feature.properties.ML1) + "<br/>Humanitarian Aid (HA1): " + this.feature.properties.HA1 );
	}

	function onEachFeature(feature, layer) {
		layer.on({
			click: zoomToFeature
		});
	}




	




	//var myGeoJSONPath = './data/custom.geo.small.json';//custom.geo--low.json';
	var myGeoJSONPath = './data/fews__east-africa__ML1__2017--simplified.json';//


    $.getJSON(myGeoJSONPath,function(data){


		//==================
		// |  Define map   |
		//==================

		map = L.map('map', {
			maxZoom: 10,
			minZoom: 2,
			maxBounds:[
				[35, 70],
				[-43, -26]
			],
			attributionControl: false,
			scrollWheelZoom: false/*,
			layers: [Esri_WorldTerrain, Stamen_TonerHybrid]*/
		});

		map.createPane('labels');
		map.getPane('labels').style.zIndex = 650;
		map.getPane('labels').style.pointerEvents = 'none';




		//====================================
		// |  Define map tiles and overlays  |
		//====================================

		/*
		var Stamen_Watercolor = L.tileLayer('http://stamen-tiles-{s}.a.ssl.fastly.net/watercolor/{z}/{x}/{y}.{ext}', {
			attribution: 'Map tiles by <a href="http://stamen.com">Stamen Design</a>, <a href="http://creativecommons.org/licenses/by/3.0">CC BY 3.0</a> &mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
			subdomains: 'abcd',
			minZoom: 1,
			maxZoom: 16,
			ext: 'png'
		}).addTo(map);

		var Stamen_TonerLines = L.tileLayer('http://stamen-tiles-{s}.a.ssl.fastly.net/toner-lines/{z}/{x}/{y}.{ext}', {
			attribution: 'Map tiles by <a href="http://stamen.com">Stamen Design</a>, <a href="http://creativecommons.org/licenses/by/3.0">CC BY 3.0</a> &mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
			subdomains: 'abcd',
			minZoom: 0,
			maxZoom: 20,
			ext: 'png',
			pane: 'labels'
		}).addTo(map);
		*/

		var Esri_WorldTerrain = L.tileLayer('http://server.arcgisonline.com/ArcGIS/rest/services/World_Terrain_Base/MapServer/tile/{z}/{y}/{x}', {
			attribution: 'Tiles &copy; Esri &mdash; Source: USGS, Esri, TANA, DeLorme, and NPS',
			maxZoom: 13
		}).addTo(map);

		var Stamen_TonerHybrid = L.tileLayer('http://stamen-tiles-{s}.a.ssl.fastly.net/toner-hybrid/{z}/{x}/{y}.{ext}', {
			attribution: 'Map tiles by <a href="http://stamen.com">Stamen Design</a>, <a href="http://creativecommons.org/licenses/by/3.0">CC BY 3.0</a> &mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
			subdomains: 'abcd',
			minZoom: 0,
			maxZoom: 20,
			ext: 'png',
		    pane: 'labels'
		}).addTo(map);




		//Create the vector map
		var vectorMap = L.geoJson(data, {
			style: styleBasedOnValue,
			onEachFeature: onEachFeature
		}).addTo(map); //Could also add/remove this layer this on scroll.


		
		map.setView([8, 39], 4);

        /*
		map.fitBounds([
			[21, 52],
			[-5, 4]
		]);
		*/

    })






	//======================
	// |  Display tweets   |
	//======================

	function showTweet(){
		$( ".tweet" ).each(function( index ) {
			var tweet = $(this)[0];
			var id = $(this).data("tweet");

			twttr.widgets.createTweet(
			  id, tweet, 
				{
					conversation : 'none',    // or all
					cards        : 'visible',  // or visible 
					//linkColor    : '#900', // default is blue
					theme        : 'light'    // or dark
				})

		});
	}
	showTweet();

});