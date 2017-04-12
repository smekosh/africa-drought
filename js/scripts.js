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