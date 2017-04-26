var px_title_image = 'img/top-sm.jpg';



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
        speed: .75
    });
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




});