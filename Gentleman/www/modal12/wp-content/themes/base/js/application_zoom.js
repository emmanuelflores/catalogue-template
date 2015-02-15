var height_ita;
var height_eng;
var uff_height;

function remove_all_events() {
	$('#mobile_info_project, #mobile_info_project_close').unbind('click');
}

function force_display_box() {
	$('.inside_project, .in_ita, .in_eng').css({'display': 'block'});
}

function force_hide_box() {
	$('.inside_project').css({'display': 'none'});
}

$(document).ready(function() {
	if(($(window).width() <= 1280) && ($(window).width() > 480)) {
		var t = setTimeout(function(){ 
		remove_all_events();
		force_hide_box();
		$('.in_ita, .in_eng').css({'display': 'block'});
		$('.project_third_column').removeAttr('style');
		$('#mobile_info_project_close, #mobile_info_project').click(function(e){
				e.preventDefault();
				$('.inside_project').slideToggle();
				$('body').focus();
			});
		}, 500);
	} else if($(window).width() <= 480) { 
		var t = setTimeout(function(){ 
		$('body').append($('.in_ita').clone().css({'display': 'block', 'left': '-1000px', 'width': $(window).width()*0.9}).attr('id', 'cloning_ita'));
		$('body').append($('.in_eng').clone().css({'display': 'block', 'left': '-1000px', 'width': $(window).width()*0.9}).attr('id', 'cloning_eng'));
		var height_ita = $('#cloning_ita').innerHeight()+40;
		var height_eng = $('#cloning_eng').innerHeight()+40;
		var uff_height = Math.max(height_eng, height_ita);
		$('#cloning_eng, #cloning_ita').remove();
		$('.project_third_column').css({'height': uff_height});
		remove_all_events();
		force_hide_box();
		$('.in_ita').css({'display': 'none'});
		$('#mobile_info_project').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.inside_project').css('display') == 'block') {
					$('.inside_project').css({'display': 'none'});
				} else {
					$('.inside_project').css({'display': 'block'});
				}
				
			});
			$('#mobile_info_project_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.inside_project').css('display') == 'block') {
					$('.inside_project').css({'display': 'none'});
				}
			});
			$('#lang_ita_switcher').click(function(e) {
				e.preventDefault();
				$('.in_eng').hide("slide", { direction: "left" }, 500);
				$('.in_ita').show("slide", { direction: "right" }, 500);
			});
			$('#lang_eng_switcher').click(function(e) {
				e.preventDefault();
				$('.in_ita').hide("slide", { direction: "right" }, 500);
				$('.in_eng').show("slide", { direction: "left" }, 500);
			});
		}, 500);
	} else {
		remove_all_events();
		force_display_box();
		$('.project_third_column').removeAttr('style');
	}
	
	$(window).resize(function() {
		if(($(window).width() <= 1280) && ($(window).width() > 480)) {
			
			remove_all_events();
			force_hide_box();
			$('.in_ita, .in_eng').css({'display': 'block'});
			$('.project_third_column').removeAttr('style');
			$('#mobile_info_project, #mobile_info_project_close').click(function(e){
				e.preventDefault();
				$('.inside_project').slideToggle();
				$('body').focus();
			});
		} else if($(window).width() <= 480) { 
			$('body').append($('.in_ita').clone().css({'display': 'block', 'left': '-1000px', 'width': $(window).width()*0.9}).attr('id', 'cloning_ita'));
			$('body').append($('.in_eng').clone().css({'display': 'block', 'left': '-1000px', 'width': $(window).width()*0.9}).attr('id', 'cloning_eng'));
			var height_ita = $('#cloning_ita').innerHeight()+40;
			var height_eng = $('#cloning_eng').innerHeight()+40;
			var uff_height = Math.max(height_eng, height_ita);
			$('#cloning_eng, #cloning_ita').remove();
			$('.project_third_column').css({'height': uff_height});
			remove_all_events();
			force_hide_box();
			$('.in_ita').css({'display': 'none'});
			$('#mobile_info_project').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.inside_project').css('display') == 'block') {
					$('.inside_project').css({'display': 'none'});
				} else {
					$('.inside_project').css({'display': 'block'});
				}
				
			});
			$('#mobile_info_project_close').click(function(e){
				e.preventDefault();
				$('body').focus();
				if ($('.inside_project').css('display') == 'block') {
					$('.inside_project').css({'display': 'none'});
				}
			});
			
			$('#lang_ita_switcher').click(function(e) {
				e.preventDefault();
				$('.in_eng').hide("slide", { direction: "left" }, 500);
				$('.in_ita').show("slide", { direction: "right" }, 500);
			});
			$('#lang_eng_switcher').click(function(e) {
				e.preventDefault();
				$('.in_ita').hide("slide", { direction: "right" }, 500);
				$('.in_eng').show("slide", { direction: "left" }, 500);
			});
		} else {
			remove_all_events();
			force_display_box();
			$('.project_third_column').removeAttr('style');
		}
	});
});
