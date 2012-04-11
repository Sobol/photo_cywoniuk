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
//= require jquery.timers-1.2
//= require jquery.easing.1.3
//= require jquery.galleryview-3.0-dev
//= require_tree .

$(function() {
  $("#image-list ul li, #galleries ul li").mouseenter(function() {
    $(this).children(".remove-photo").show();
  }).mouseleave(function() {
    $(this).children(".remove-photo").hide();
  });
  
  $('#myGallery').galleryView({
    panel_width: 990,
    panel_height: 450,
    autoplay: true,
    transition_interval: 4000,
		show_panels: true, 				//BOOLEAN - flag to show or hide panel portion of gallery
		enable_overlays: true, 			//BOOLEAN - flag to show or hide panel overlays
		panel_animation: 'crossfade', 		//STRING - animation method for panel transitions (crossfade,fade,slide,none)
		overlay_position: 'bottom', 	//STRING - position of panel overlay (bottom, top)
		start_frame: 1, 				//INT - index of panel/frame to show first when gallery loads
		frame_width: 164, 				//INT - width of filmstrip frames (in pixels)
		frame_height: 80, 				//INT - width of filmstrip frames (in pixels)
		frame_opacity: 0.5, 			//FLOAT - transparency of non-active frames (1.0 = opaque, 0.0 = transparent)
		frame_scale: 'crop', 			//STRING - cropping option for filmstrip images (same as above)
		frame_gap: 5, 					//INT - spacing between frames within filmstrip (in pixels)
		show_infobar: true,				//BOOLEAN - flag to show or hide infobar
		infobar_opacity: 0.0				//FLOAT - transparency for info bar
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

