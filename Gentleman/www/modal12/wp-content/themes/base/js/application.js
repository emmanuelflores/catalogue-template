var s_i;
var t_i;
var f_i;
var c_top;
var l_iniz;
var new_scroll;
var h;
var lightgray;
var in_i_t;
var thumb_height;
var thumb_top;
var box_very_gray_h;
var temp_t;
var prog_perc;
var prog_top;
var third_index_h;
var t_incipit_ita;
var t_incipit_eng;
var projects_button_top;
var info_button_top;

function roundTo(value, decimalpositions)
{
    var i = value * Math.pow(10,decimalpositions);
    i = Math.round(i);
    return i / Math.pow(10,decimalpositions);
}

function VerticalCenter() {
	h = parseInt($('.index_logo').height()/2);
	h2 = parseInt($('.menu_right_img').height()/2);
	third_index_h = parseInt($('.third_index').height());
	l_iniz = $('.finto_index_logo').css('top');
	$('.index_logo').css({'margin-top': -h});
	$('.menu_right_img').css({'margin-top': -h2});
	thumb_height = parseInt($('.project_other').height()/2);
	thumb_top = parseInt($('.box_project').last().position().top);
	box_very_gray_h = parseInt($('.box_verygray').height());
	//console.log(thumb_top);
	$('#box_gray').css({'height': thumb_height+box_very_gray_h+thumb_top+150});
	$('.another_box_gray').css({'height': ($(window).height()/100)*70});
	in_i_t = parseInt(l_iniz)-220;
	if (in_i_t < 25) {
		in_i_t = 25;
	}
	$('.intest_index').css({'top': in_i_t});
	$('#box_gray').css({'top': '75%'});
	temp_t = parseInt($('#box_gray').css('top'));
	//console.log(temp_t);
}

function calc_distance() {
	s_i = parseInt($('.second_index').offset().top);
	t_i = parseInt($('.third_index').offset().top);
	f_i = parseInt($('.fourth_index').offset().top);
	
	projects_button_top = parseInt($('.menu_left_first_img').last().position().top);
	info_button_top = parseInt($('.menu_left_second_img').last().position().top);
	//lightgray = $('.links').offset().top - $('#box_gray').offset().top - 80;
	//$('#box_gray').css({'height': lightgray});
}

function remove_all_events() {
	
	$('.box_project').unbind('hover');
	$(window).unbind('scroll');
	$('#mobile_about, #mobile_about_close, #mobile_pubblication, #mobile_pubblications_close, #mobile_contacts, #mobile_contacts_close, #mobile_who, #mobile_who_close, #reallymobile_who, #reallymobile_who_close, #mobile_contacts_close_mob').unbind('click');
}


function init() {
	
	$('.menuel').click(function() {
		//console.log($($(this).attr('href')).position().top);
	});
	
	$('.box_project').hover(
		function(){
			$(this).find('.box_project_title').stop().fadeTo(300, 0.95);
		},
		function(){
			$(this).find('.box_project_title').stop().fadeOut(300);
		}
	);
	
	$(window).scroll( function(e) {
		calc_distance();
		c_top = $(document).scrollTop();
		cost = 80;
		//console.log($('.second_index').position().top);
		//console.log(c_top);
		//console.log(f_i);
		h = parseInt($('.index_logo').height()/2);
		if(c_top >= 0) {
			//da 0 a in_i_t
			prog_perc = parseInt((c_top*100)/in_i_t/5);
			//da 0 a 80 % di in_i_t
			//prog_perc = parseInt((c_top*100)/parseInt((in_i_t*8)/10));
			//console.log(prog_perc);
			if(prog_perc <= 0) {
				prog_perc = 0;
			}
			if(prog_perc >= 100) {
				prog_perc = 100;
			}
			
			prog_top = temp_t-(parseInt((prog_perc/100)*(temp_t-in_i_t)));
			//prog_top = temp_t - (parseInt((prog_perc/100)*temp_t));
			//console.log(prog_top);
			if(prog_top < 400) {
				prog_top = 400;
			} 
			t_incipit_eng = (20-(prog_perc/6));
			if (t_incipit_eng <= 11) {
				t_incipit_eng = 11;
			}
			t_incipit_ita = (8-(prog_perc/6));
			if (t_incipit_ita <= 0) {
				t_incipit_ita = 0;
			}
			$('.incipit_eng').clearQueue().animate({'bottom': t_incipit_eng+'%'});
			$('.incipit_ita').clearQueue().animate({'bottom': t_incipit_ita+'%'});
			$('#box_gray').clearQueue().animate({'top': prog_top}, 5);
			/*console.log(temp_t-(c_top*3));
			if(temp_t-(c_top*4) > 120)	{
				$('#box_gray').clearQueue().animate({'top': temp_t-(c_top*4)}, 5);
			} else {
				$('#box_gray').clearQueue().animate({'top': 120}, 5);
			}*/
		}
		if (c_top >= parseInt(l_iniz)-25) {
			$('.index_logo').css({'margin-top': 0, 'top': '25px', 'position': 'fixed'});
		} else {
			$('.index_logo').css({'margin-top': -h, 'top': '50%', 'position': 'absolute'});
		}
		
		if((c_top < (s_i-400))) {
			//$('.second_index_bkg').clearQueue().fadeTo(5, 0);
		}
		if ((c_top >= (s_i-400))) {
			perc = parseInt(((c_top-s_i+400)/4))/100;
			if(perc >= 1) {
				perc = 1;
			}
			
			//$('.second_index_bkg').clearQueue().fadeTo(5, perc);
			
		} 
		if ((c_top >= (t_i-$(window).height())) && (c_top < t_i)){
			perc =parseInt(((c_top+$(window).height()-t_i)*100)/$('.third_index').height());
			if (perc >= 100) {
				perc = 100;
			}
			new_left = parseInt((15*perc)/100);
			$('.another_box_gray').clearQueue().css({'left': new_left+'%'});
			new_pub_top = -9-((parseInt((9*perc)/100)));
			$('.pubblications').clearQueue().css({'margin-top': new_pub_top+'%'});
			//$('.second_index_bkg').clearQueue().fadeTo(5, 1-perc);
			
		} else if(c_top >= t_i) {
			$('.another_box_gray').clearQueue().css({'left': '15%'});
		}
		
		
		if((c_top+$(window).height()) >= f_i) {
			perc_info = parseInt(((c_top+$(window).height()-f_i)*100)/$('.fourth_index').height());
			if (perc_info >= 100) {
				perc_info = 100;
			}
			$('.cright .contacts_right').clearQueue().css({'margin-right': -parseInt(45-(0.45*perc_info))+'%'});
			$('.cleft .contacts_left').clearQueue().css({'margin-left': -parseInt(45-(0.45*perc_info))+'%'});
			$('.cright .other_contacts').clearQueue().css({'margin-left': -parseInt(10-(0.10*perc_info))+'%'});
			$('.cleft .other_contacts').clearQueue().css({'margin-right': -parseInt(10-(0.10*perc_info))+'%'});
			$('.contacts_abs.cleft').clearQueue().css({'left': -(10-parseInt(0.10*perc_info))+'%'});
			$('.contacts_abs.cright').clearQueue().css({'right': -parseInt(10-(0.10*perc_info))+'%'});
		}
		
		if((c_top >= s_i) && (c_top < t_i)) {
			$('#button_selected').clearQueue().animate({'top': projects_button_top+38}).fadeIn();
		} else if((c_top >= t_i)) {
			$('#button_selected').clearQueue().animate({'top': info_button_top+14}).fadeIn();
		} else {
			$('#button_selected').fadeOut();
		}
		
	});
	
	$('.menuel').click( function(e) {
		e.preventDefault();
		var clicked = $(this).attr('href');
		new_scroll = parseInt($(clicked).offset().top);
		$('html, body').clearQueue().animate({scrollTop: new_scroll}, 1500, 'easeOutExpo');
	});
	$('.index_logo, .label_project').click( function(e) {
		e.preventDefault();
		$('html, body').clearQueue().animate({scrollTop: 0}, 1500, 'easeOutExpo');
	});
	$(window).resize(function() {
		calc_distance();
		c_top = $(document).scrollTop();
		cost = 80;
		//console.log($(window).width());
		//console.log($('.second_index').position().top);
		//console.log(c_top);
		//console.log(f_i);
		h = parseInt($('.index_logo').height()/2);
		if (c_top >= parseInt(l_iniz)-25) {
			$('.index_logo').css({'margin-top': 0, 'top': '25px', 'position': 'fixed'});
		} else {
			$('.index_logo').css({'margin-top': -h, 'top': '50%', 'position': 'absolute'});
		}
		
			
		if ((c_top >= (s_i-400))) {
			perc = parseInt(((c_top-s_i+400)/4))/100;
			if(perc >= 1) {
				perc = 1;
			}
			
			//$('.second_index_bkg').clearQueue().fadeTo(5, perc);
			
		} 
		if (c_top >= (t_i-400)) {
			perc = parseInt(((c_top-t_i+400)/4))/100;
			if(perc >= 1) {
				perc = 1;
			}
			
			//$('.second_index_bkg').clearQueue().fadeTo(5, 1-perc);
			
		}
		
		if((c_top >= s_i) && (c_top < t_i)) {
			$('#button_selected').clearQueue().animate({'top': projects_button_top+38}).fadeIn();
		} else if((c_top >= t_i)) {
			$('#button_selected').clearQueue().animate({'top': info_button_top+14}).fadeIn();
		} else {
			$('#button_selected').fadeOut();
		}
		
		
	});
}

function force_display_box() {
	$('#about_cont, .pubblications, .links, .contacts_box').css({'display': 'block'});
}

function force_hide_box() {
	$('#about_cont, .pubblications, .links, .contacts_box, .other_links').css({'display': 'none'});
	$('.cright .contacts_right, .cleft .contacts_left, .cright .other_contacts, .cleft .other_contacts, .contacts_abs.cleft, .contacts_abs.cright, .who_giuditta, .who_augusto').removeAttr('style');
}

$(document).ready(function() {
	calc_distance();
	var h = parseInt($('.index_logo').height()/2);
	var h2 = parseInt($('.menu_right_img').height()/2);
	var t = setTimeout(function(){
		VerticalCenter();
		//$('body').fadeIn('fast');
		}, 1000);
	VerticalCenter();
	if(($(window).width() <= 1280) && ($(window).width() > 481)) {
			var t = setTimeout(function(){ 
			remove_all_events();
			force_hide_box();
			$('#mobile_about').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('#about_cont').slideDown();
			});
			$('#mobile_about_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('#about_cont').slideUp();
			});
			
			$('#mobile_pubblication, #mobile_pubblications_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('.pubblications').slideToggle();
			});
			$('#mobile_contacts, #mobile_contacts_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('.links').slideToggle();
			});
			$('#mobile_who, #mobile_who_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('.contacts_box').slideToggle();
			});
			}, 500);
		} else if($(window).width() <= 481) { 
			remove_all_events();
			force_hide_box();
			$('#mobile_about').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('#about_cont').css('display') == 'block') {
					$('#about_cont').css({'display': 'none'});
				} else {
					$('#about_cont').css({'display': 'block'});
				}
				
			});
			$('#mobile_about_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('#about_cont').css('display') == 'block') {
					$('#about_cont').css({'display': 'none'});
				}
			});
			$('#mobile_pubblication').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.pubblications').css('display') == 'block') {
					$('.pubblications').css({'display': 'none'});
				} else {
					$('.pubblications').css({'display': 'block'});
				}
				
			});
			$('#mobile_pubblications_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.pubblications').css('display') == 'block') {
					$('.pubblications').css({'display': 'none'});
				}
			});
			$('#reallymobile_who').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.who_giuditta').css('display') == 'block') {
					$('.who_giuditta, .who_augusto').css({'display': 'none'});
				} else {
					$('.who_giuditta, .who_augusto').css({'display': 'block'});
				}
				
			});
			$('#reallymobile_who_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.who_giuditta').css('display') == 'block') {
					$('.who_giuditta, .who_augusto').css({'display': 'none'});
				}
			});
			$('#mobile_contacts').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.links').css('display') == 'block') {
					$('.links, .other_links').css({'display': 'none'});
				} else {
					$('.links, .other_links').css({'display': 'block'});
				}
				
			});
			$('#mobile_contacts_close_mob').click(function(e){
				console.log('a');
				e.preventDefault();
				$('body').focus();
				if ($('.links').css('display') == 'block') {
					$('.links, .other_links').css({'display': 'none'});
				}
			});
			
			$('#lang_ita_switcher').click(function(e) {
				e.preventDefault();
				$('body').focus();
				$('.main_eng').hide("slide", { direction: "left" }, 500);
				$('.main_ita').show("slide", { direction: "right" }, 500);
			});
			$('#lang_eng_switcher').click(function(e) {
				e.preventDefault();
				$('body').focus();
				$('.main_ita').hide("slide", { direction: "right" }, 500);
				$('.main_eng').show("slide", { direction: "left" }, 500);
			});
		} else {
			remove_all_events();
			force_display_box();
			init();
		}
	$(window).resize(function() {
		VerticalCenter();
		if(($(window).width() <= 1280) && ($(window).width() > 481)) {
			remove_all_events();
			force_hide_box();
			$('#mobile_about').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('#about_cont').slideDown();
			});
			$('#mobile_about_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('#about_cont').slideUp();
			});
			$('#mobile_pubblication, #mobile_pubblications_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('.pubblications').slideToggle();
			});
			$('#mobile_contacts, #mobile_contacts_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('.links').slideToggle();
			});
			$('#mobile_who, #mobile_who_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				$('.contacts_box').slideToggle();
			});
		} else if($(window).width() <= 481) { 
			remove_all_events();
			remove_all_events();
			force_hide_box();
			$('#mobile_about').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('#about_cont').css('display') == 'block') {
					$('#about_cont').css({'display': 'none'});
				} else {
					$('#about_cont').css({'display': 'block'});
				}
				
			});
			$('#mobile_about_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('#about_cont').css('display') == 'block') {
					$('#about_cont').css({'display': 'none'});
				}
			});
			$('#mobile_pubblication').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.pubblications').css('display') == 'block') {
					$('.pubblications').css({'display': 'none'});
				} else {
					$('.pubblications').css({'display': 'block'});
				}
				
			});
			$('#mobile_pubblications_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.pubblications').css('display') == 'block') {
					$('.pubblications').css({'display': 'none'});
				}
			});
			
			$('#reallymobile_who').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.who_giuditta').css('display') == 'block') {
					$('.who_giuditta, .who_augusto').css({'display': 'none'});
				} else {
					$('.who_giuditta, .who_augusto').css({'display': 'block'});
				}
				
			});
			$('#reallymobile_who_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.who_giuditta').css('display') == 'block') {
					$('.who_giuditta, .who_augusto').css({'display': 'none'});
				}
			});
			$('#lang_ita_switcher').click(function(e) {
				e.preventDefault();
				$('body').focus();
				$('.main_eng').hide("slide", { direction: "left" }, 500);
				$('.main_ita').show("slide", { direction: "right" }, 500);
			});
			$('#lang_eng_switcher').click(function(e) {
				e.preventDefault();
				$('body').focus();
				$('.main_ita').hide("slide", { direction: "right" }, 500);
				$('.main_eng').show("slide", { direction: "left" }, 500);
			});
			$('#mobile_contacts').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.links').css('display') == 'block') {
					$('.links, .other_links').css({'display': 'none'});
				} else {
					$('.links, .other_links').css({'display': 'block'});
				}
				
			});
			$('#mobile_contacts_close_mob').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.links').css('display') == 'block') {
					$('.links, .other_links').css({'display': 'none'});
				}
			});
		} else {
			remove_all_events();
			force_display_box();
			init();
		}
	});
	
	
});
