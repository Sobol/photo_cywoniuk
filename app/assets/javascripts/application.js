// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require galleria-1.2.7
//= require_tree .

$(function() {
  $("#image-list ul li, #galleries ul li").mouseenter(function() {
    $(this).children(".remove-photo").show();
  }).mouseleave(function() {
    $(this).children(".remove-photo").hide();
  });
  
  $("#galleries ul li").mouseenter(function() {
    $(this).find("a.normal").stop().animate({opacity:1}, 1000);
    $(this).children(".infobox").animate({top: "-40px"}, 400);
  }).mouseleave(function() {
		$(this).find('a.normal').stop().animate({opacity:0}, 1000);
    $(this).children(".infobox").animate({top: "10px"}, 400);
  });
});

