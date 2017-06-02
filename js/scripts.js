//var px_title_image = 'img/top-sm.jpg';

jQuery(document).ready(function () {
    // scoped as anon for menu functions
    (function() {
        // handle the translation dropdown
        $( '.language-toggle' ).click(function(e) {
            $( '.languages' ).slideToggle( 800 );
        });

        $( '.slide' ).click(function() {
            $( '.languages' ).hide();
        });
    })();    
    (function() {
        // handle the intra-page navigation
        $( '.section-nav-toggle' ).click(function(e) {
            $( '.nav-sections' ).slideToggle( 800 );
            $( '.languages' ).hide();
        });

        $( '.language-toggle' ).click(function(e) {
            $( '.nav-sections' ).hide();
        });

        $( '.slide' ).click(function() {
            $( '.nav-sections' ).hide();
        });
    })();    
    $('#parallax-window-1').parallax({
        imageSrc: px_title_image,
        speed: .5,
        positionY: '0'
    });

    if (jQuery('#slider').length) {

        var slider = document.getElementById('slider');
        noUiSlider.create(slider, {
            start: [1, 5],
            connect: true,
            tooltips: true,
            range: {
                'min': 1,
                'max': 5
            },
            format: wNumb({
                decimals: 0,
                prefix: 'Level ',
            })
        });
        slider.noUiSlider.on('update', function(){
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

    }




    var locked = false;
    var interacted = false;
    var maxQuote = jQuery('#quote-container > div').length;
    var currentQuote = Math.floor((Math.random()*maxQuote)+0);
    jQuery('#quote'+currentQuote).css('display','block');

    setInterval(function () {
        if (!interacted) {
          locked = true;
          jQuery('#quote'+currentQuote).fadeOut('slow', function () {
            if (currentQuote+1 < maxQuote) {
              target = currentQuote + 1;        
            } else {
              currentQuote = -1;
              target = 0;        
            }
            jQuery('#quote'+target).fadeIn('slow', function () {
              currentQuote++;
              locked = false;
            });
          });
        }
  }, 6000);

if (jQuery('.wrapper-infographic').length) {

    jQuery.getJSON("data/countries.json", function(result){

        var arr = jQuery.map(result, function(el) { return el });
        for (var i in arr) {
            arr[i] = jQuery.map(arr[i], function(el) { return el });
        }

        var chart1 = '';
        var output = '<div class="container"><div class="row">';

        var countryCount = 0;
        var refugeesMax = 0;
        var refugeesCount = 0;
        var refugeesBarCount = 0;

        // Calculate max/count values...
        for (var i in arr) {

            var a=arr[i][8];
            a=a.replace(/\,/g,'');
            a=parseInt(a,10);            

            if (a > 0) {
                refugeesCount++;
            }
            if (a > refugeesMax) { 
                refugeesMax = a;
            }
        }



        for (var i in arr) {


            if (arr[countryCount][12] == '-') {
                fundingGap = '<span class="unknown">Unknown</span>';
            } else {
                fundingGap = '$' + arr[countryCount][12];
            }

            

            var str = arr[countryCount][6];
            var res = str.split(",");
            var highestIPC = 0
            for (var i in res) {
                if (res[i] > highestIPC) {
                    highestIPC = res[i];
                }
            }



            var a=arr[countryCount][8];
            a=a.replace(/\,/g,'');
            a=parseInt(a,10);  

            console.log('refugee count: ' + a);
            console.log((200*(a/refugeesMax)));

            if (a > 0) {
                refugeesBarCount++;
                console.log('counter: ' + refugeesBarCount);
                if (refugeesBarCount == refugeesCount) {
                    adjustment = 1;
                } else {
                    adjustment = -1;
                }
                jQuery("#chartA thead tr").append('<th class="rotate"><div><span>'+arr[countryCount][0]+'</span></div></th>');
                jQuery("#chartA tbody tr").append('<td class="country-col"><div style="left: '+adjustment+'px; top: '+(200-(200*(a/refugeesMax)))+'px; height:'+(a/refugeesMax*100)+'%;"></div></td>');
            


            }

            //<h5 class="country-link"><a href="?country='+arr[countryCount][14]+'">Read more</a></h5>
            output += '<div class="col-sm-3 col-xs-6"><div class="country-record"><h2>'+arr[countryCount][0]+'</h2><img class="img-responsive country" src="img/'+arr[countryCount][13]+'"><section><h5>At Risk</h5><h4>'+arr[countryCount][7]+'</h4><h5>Highest IPC Level</h5><h4>'+highestIPC+'</h4><h5>Funding Gap</h5><h4>'+fundingGap+'</h4><h5>Conflict Deaths</h5><h4>'+arr[countryCount][3]+'</h4></section></div></div>';

            countryCount++;

            if (countryCount%4==0) {
            
                output += '</div><div class="row">';

            }

        }


        jQuery("#chartA tbody").append('<tr class="table-footer"><td colspan="'+refugeesCount+'">Number of Refugees Hosted</td></tr>');

        output += '</div></div>';

        jQuery(".wrapper-infographic").append(output);


    });
}



if (jQuery('#news-page').length) {

    jQuery.getJSON("data/spreadsheet.json?1", function(result){

        var arr = jQuery.map(result, function(el) { return el });
        for (var i in arr) {
            arr[i] = jQuery.map(arr[i], function(el) { return el });
        }


        var storyCount = 0;

        var output = '';

        arr.reverse();

        for (var i in arr) {


var title = arr[storyCount][0]
var byline = arr[storyCount][1]
var link = arr[storyCount][2]
var photo = arr[storyCount][3]
var countries = arr[storyCount][5]
var date = arr[storyCount][6]
var type = arr[storyCount][8]
var description = arr[storyCount][11]


title = title.replace("â€¦", "…");
description = description.replace("â€¦", "…");

title = title.replace("â€“", "–");
description = description.replace("â€“", "–");

title = title.replace("â€™", "’");
description = description.replace("â€™", "’");

title = title.replace("â€œ", "“");
description = description.replace("â€œ", "“");

title = title.replace("â€", "”");
description = description.replace("â€", "”");

output += '<div class="row"><div class="col-sm-3"><img class="img-responsive lazy" data-original="'+photo+'"></div><div class="col-sm-9"><span class="pubdate">'+date+'</span><h1 class="featured-video"><a href="'+link+'">'+title+'</a></h1><span class="byline">By '+byline+'</span><p class="lead-video">'+description+'</p></div></div>';



            storyCount++;


        }

        jQuery("#all-stories").append(output);

        jQuery("img.lazy").lazyload({
            effect : "fadeIn"
        });        

    });
}




        //if (jQuery('#parallax-window-1').length) {
            jQuery(window).scroll(function() {
                //var tT = jQuery('#parallax-window-1').offset().top;
                //var tH = jQuery('#parallax-window-1').outerHeight();

                var wS = $(this).scrollTop();
                

                if (wS > 200 && jQuery('div.voa-masthead-inner a.hideable1').css('opacity') == 0){
                    console.log('fade stuff in');

                    jQuery('div.voa-masthead-inner a.hideable1').fadeTo('slow', 1);
                    if (jQuery(window).width() > 768) {
                        jQuery('div.voa-masthead-inner a.hideable').fadeTo('slow', 1);
                    }
                } else if (wS < 200 && jQuery('div.voa-masthead-inner a.hideable1').css('opacity') == 1) {
                    console.log('fade stuff out');
                    jQuery('div.voa-masthead-inner a.hideable1').fadeTo('slow', 0);
                    if (jQuery(window).width() > 768) {
                        jQuery('div.voa-masthead-inner a.hideable').fadeTo('slow', 0);
                    }                    
                }
            });
        //} else {
        //    jQuery('div.voa-masthead-inner a.hideable1').css({opacity:1});
        //}





});