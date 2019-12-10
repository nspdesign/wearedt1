$('.pro-sliders').owlCarousel({
    loop: true,
    margin: 30,
    items: 4,
    dots: false,
    nav: true,
    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    responsiveClass: true,
    responsive: {
        0: {
            items: 1
        },
        481: {
            items: 2
        },
        700: {
            items: 3
        },
        992: {
            items: 3,
        }
    }
});


$('.testimonial-slider').owlCarousel({
    loop: true,
    //margin:10,
    //nav:true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
    }
});

$('.testimonialn-slider').owlCarousel({
    loop: true,
    //margin:10,
    //nav:true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
    }
});

$('.testimonial-sliders').owlCarousel({
    loop: false,
    margin: 30,
    items: 2,
    nav: true,
    dots: false,
    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    responsiveClass: true,
    responsive: {
        0: {
            items: 1
        },
        1200: {
            items: 2
        },
        1024: {
            items: 2
        }
    }
});

$('.service-slider').owlCarousel({
    loop: true,
    items: 3,
    nav: true,
    dots: false,
    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    responsiveClass: true,
    autoplay: true,
    responsive: {
        0: {
            items: 1,
            autoWidth: false
        },
        1200: {
            items: 3,
            autoWidth: false
        },
        1024: {
            items: 3,
            autoWidth: false
        }
    }
});

$('.blog-slider').owlCarousel({
    loop: true,
    margin: 30,
    items: 3,
    nav: true,
    dots: false,
    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    responsiveClass: true,
    autoplay: true,
    responsive: {
        0: {
            items: 1,
            autoWidth: false
        },
        1200: {
            items: 3,
            autoWidth: false
        },
        1024: {
            items: 3,
            autoWidth: false
        }
    }
});

$('.client-slider').owlCarousel({
    loop: true,
    margin: 27,
    nav: false,
    dots: false,
    autoWidth: true,
    autoplay: true,
    responsive: true,
    autoplayTimeout: 3000,
    autoplayHoverPause: true,
    responsive: {
        0: {
            items: 1,
            autoWidth: false
        },
        480: {
            items: 2,
            autoWidth: false
        },
        600: {
            items: 3,
            autoWidth: false
        },
        1000: {
            items: 6,
            autoWidth: false
        }
    }
});

function Counter() {
    $('.counter-value').each(function () {
        $(this).prop('Counter', 0).animate({
            Counter: $(this).text()
        }, {
            duration: 3500,
            easing: 'swing',
            step: function (now) {
                $(this).text(Math.ceil(now));
            }
        });
    });
}
// 4. select menu
function selectMenu() {
    if ($('.select-menu').length) {
        $('.select-menu').selectmenu();
    }
    ;
}
// 9. sticky header
function stickyHeader() {
    if ($('.stricky').length) {
        var strickyScrollPos = 100;
        if ($(window).scrollTop() > strickyScrollPos) {
            $('.stricky').removeClass('fadeIn animated');
            $('.stricky').addClass('stricky-fixed fadeInDown animated');
        } else if ($(this).scrollTop() <= strickyScrollPos) {
            $('.stricky').removeClass('stricky-fixed fadeInDown animated');
            $('.stricky').addClass('slideIn animated');
        }
    }
    ;
}
// 10. gallery
function fleetGallery() {
    if ($('.fleet-gallery').length) {
        $('.fleet-gallery').mixItUp();
    }
    ;
}
// 11. typed plugin
function typed() {
    if ($(".typed").length) {
        $(".typed").typed({
            stringsElement: $('.typed-strings'),
            typeSpeed: 200,
            backDelay: 1500,
            loop: true,
            contentType: 'html', // or text
            // defaults to false for infinite loop
            loopCount: false,
            callback: function () {
                null;
            },
            resetCallback: function () {
                newTyped();
            }
        });
    }
    ;
}


// =9. main menu sticky
function menuSticky() {
    if ($('.menu_fixed.main_menu').length) {
        var sticky = $('.menu_fixed.main_menu'),
                scroll = $(window).scrollTop();

        if (scroll >= 190)
            sticky.addClass('fixed');
        else
            sticky.removeClass('fixed');
    }
    ;
}

// instance of fuction while Window Scroll event
jQuery(window).on('scroll', function () {
    (function ($) {
        stickyHeader();
        menuSticky();
    })(jQuery);
});