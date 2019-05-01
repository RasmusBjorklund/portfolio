'use strict';

$(window).scroll(function() {
  //   $('nav').toggleClass('scrolled bg-white', $(this).scrollTop() > 600);
  //
  //   $(".slide").animate({
  //     opacity: 1.0
  //   }, 2500);
  //
  // $('li:has(a.active)').toggleClass('bg-primary');
});


$(window).ready(function($) {

  // Preloader
    $('#preloader').delay(1000).fadeOut('slow', function() {
      $(this).remove();
    });

  $('body').scrollspy({
    target: '#navbar'
  });

  $('.rotating').Morphext({
    animation: 'flipInX',
    separator: ',',
    speed: 3000
  });

  $('.card').hover(function () {
    $('.card-img-overlay', this).toggleClass('hidden').animate('slow');
  })
});

$(window).bind('scroll', function() {
  var navHeight = $(window).height() - 70;
  if ($(window).scrollTop() > navHeight) {
    $('nav').addClass('fixed');
  } else {
    $('nav').removeClass('fixed');
  }
});
