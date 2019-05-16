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
		$('#render_help').show();
		$('#render_fan').hide();
		$('#render_web').hide();
	});

	$('.fan').click(function(){
		$('#render_fan').show();
		$('#render_web').hide();
		$('#render_help').hide();
	});

	$('.webdesign').click(function(){
		
		$('#render_web').show();
		$('#render_fan').hide();
		$('#render_help').hide();
	});

	$('.fans_render').hide();

	$('#main_content').hide();


	$('.intro_name').delay(3000).fadeOut(500);
	$('#intro').delay(3400).slideUp(500, function() {

		$('#main_content').show();
	});

	$('#intro').click(function(){

		$('#intro').hide();
		$('#main_content').show();	

	});


	$('#about_me').click(function() {
		$('.about_you').show();
		$('.about_me').hide();
		$('#render_fan').show();
	});

	$('#about_you').click(function() {
		$('.about_me').show();
		$('.about_you').hide();
	});

	$('.about_you').hide();


	$('#role_actor').hide();
	$('#role_editor').hide();
	$('#role_writer').hide();
	$('#role_developer').hide();

	setInterval(function() {
		$('#role_actor').hide();
		$('#role_developer').show();
		setTimeout( function() {
		$('#role_developer').hide();	
		}, 2001);
		setTimeout( function() {
		$('#role_writer').show();	
		}, 2001);
		setTimeout( function() {
		$('#role_writer').hide();	
		}, 4001);
		setTimeout( function() {
		$('#role_editor').show();	
		}, 4001);
		setTimeout( function() {
		$('#role_editor').hide();	
		}, 6001);
		setTimeout( function() {
		$('#role_actor').show();	
		}, 6001);
		setTimeout( function() {
		$('#role_actor').hide();	
		}, 8001);
	}, 8001);
		

	$('#intro').hide();

	$('#create_account').click( function() {
		$('#make_user').modal('show');
	});

	$(window).click(function(){
		if ($(event.target).is('.modal-backdrop')) {
			$('#make_user').modal('hide');
		};
	});

	$('#new_user_form').hide();
	$('#btn_existing_user').hide();

	$('#btn_existing_user').click( function() {
		$('#btn_existing_user').hide();
		$('#btn_non_user').show();
		$('#existing_user_form').show();
		$('#new_user_form').hide();
	});

	$('#btn_non_user').click( function() {
		$('#btn_non_user').hide();
		$('#btn_existing_user').show();
		$('#existing_user_form').hide();
		$('#new_user_form').show();
	});


	$('.nav-extra').hide();
	$('.navbar-nav').hide();
	$('.sidebar_large').hide();


	$('.sidebar_small').mouseenter( function() {
//		setTimeout( function() {
			$('.sidebar_large').delay(999).show(0);
//		}, 1000);
//		setTimeout( function() {
			$('.sidebar_small').delay(1000).hide(0);
//		}, 1000);
	});

	$('.yield').click( function() {
		$('.sidebar_small').show();
		$('.sidebar_large').hide();
	});		


	$('.nav_total').click( function() {
		$('.nav-extra').slideToggle();
	});



	
});