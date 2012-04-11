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
//= require jQuery.BlackAndWhite.js
//= require_tree .

$(function() {
  $("#image-list ul li, #galleries ul li").mouseenter(function() {
    $(this).children(".remove-photo").show();
  }).mouseleave(function() {
    $(this).children(".remove-photo").hide();
  });
  
  $("#galleries.baw ul li").BlackAndWhite({
      webworkerPath: false
  });
  
  $("#galleries ul li").mouseenter(function() {
    $(this).children(".infobox").animate({top: "-43px"}, 400);
  }).mouseleave(function() {
    $(this).children(".infobox").animate({top: "10px"}, 400);
  });
});

