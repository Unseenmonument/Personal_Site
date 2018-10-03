// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require turbolinks
//= reqire webdesign
//= require_tree .

$( document ).ready(function() {

	$('#render_fan').hide();
	$('#render_web').hide();
	$('#render_help').hide();

	$('.creative').click(function(){
		$('#render_help').toggle();
		$('#render_fan').hide();
		$('#render_web').hide();
	});

	$('.fan').click(function(){
		$('#render_fan').toggle();
		$('#render_web').hide();
		$('#render_help').hide();
	});

	$('.webdesign').click(function(){
		alert("doing this right");
		$('#render_web').toggle();
		$('#render_fan').hide();
		$('#render_help').hide();
	});

	$('.fans_render').hide();

	$('#main_content').hide();

	$('.intro_name').delay(4000).fadeOut(500);
	$('#intro').delay(4400).slideUp(500, function() {

		$('#main_content').show();
	});

	$('.about_me').click(function() {
		$('.about_you').show();
		$('.about_me').hide();
	});

	$('.about_you').click(function() {
		$('.about_me').show();
		$('.about_you').hide();
	});

	$('.about_you').hide();

//	$('#intro').hide();
	
	
});