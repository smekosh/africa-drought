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

	//Define tileset using Mapbox
	var mbToken = 'pk.eyJ1IjoiYndpbGxpYW1zb24iLCJhIjoiY2l0NjU5YWZhMDB0MjJ6cGd5bGU2dDd1cSJ9.4Bv8jg7AH5ksTrEvZyyjoQ';
	var tilesetUrl = 'https://a.tiles.mapbox.com/v4/mapbox.outdoors/{z}/{x}/{y}@2x.png?access_token='+mbToken;
	var tiles = L.tileLayer(tilesetUrl, {
		maxZoom: 18
	});






	//Create the leaflet map and restrict zoom/boundaries
	/*
	map = L.map('map', {
		maxZoom: 10,
		minZoom: 2,
		maxBounds:[
			[35, 54],
			[-43, -26]
		],
		attributionControl: false,
		scrollWheelZoom: false,
		layers: [tiles]
	});

	map.setView([8, 39], 4);
	*/
	//starts map so that the continental US is centered on the screen.
	/*map.fitBounds([
		[35, 54],
		[-43, -26]
	]);
	*/


	var myGeoJSONPath = './data/custom.geo.small.json';//custom.geo--low.json';

//var myGeoJSONPath = 'path/to/mymap.geo.json';
    var myCustomStyle = {
        stroke: false,
        fill: true,
        fillColor: '#900',
        fillOpacity: .8
    }
    $.getJSON(myGeoJSONPath,function(data){
		map = L.map('map', {
			maxZoom: 10,
			minZoom: 2,
			maxBounds:[
				[35, 54],
				[-43, -26]
			],
			attributionControl: false,
			scrollWheelZoom: false,
			layers: [tiles]
		});

        L.geoJson(data, {
            clickable: false,
            style: myCustomStyle
        }).addTo(map);
		
		map.setView([8, 39], 4);

        /*
		map.fitBounds([
			[70, 155],
			[13, -78]
		]);
		*/

    })

});