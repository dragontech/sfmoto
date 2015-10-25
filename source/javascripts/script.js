//= require jquery.flexslider-min

$(document).ready(function() {
  if(typeof console == 'undefined') {
    this.console = { log: function() { } };
  }
});

$(window).load(function() {
    $('.flexslider').flexslider({
        animation: "slide",
        controlNav: "thumbnails"
    });
});
