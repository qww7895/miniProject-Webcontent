//모바일 여부 확인
//190130 리다이렉트 개선
var linkArr = [ {'web':'customer_faq.jsp','mobile':'customer_faq.jsp','folder':'customer'},
				{'web':'praise.jsp','mobile':'praise.jsp','folder':'customer'},
				{'web':'popEmail.jsp','mobile':'popEmail.jsp','folder':'etc'},
				{'web':'popImgInfoPolicy.jsp','mobile':'popImgInfoPolicy.jsp','folder':'etc'},
				{'web':'popPrivacy.jsp','mobile':'popPrivacy.jsp','folder':'etc'},
				{'web':'unified_search.jsp','mobile':'unified_search.jsp','folder':'etc'},
				{'web':'benefit.jsp','mobile':'benefit.jsp','folder':'foundation'},
				{'web':'information.jsp','mobile':'information.jsp','folder':'foundation'},
				{'web':'manager_recruit.jsp','mobile':'manager_recruit.jsp','folder':'foundation'},
				{'web':'open_cost.jsp','mobile':'open_cost.jsp','folder':'foundation'},
				{'web':'open_inquiry.jsp','mobile':'open_inquiry.jsp','folder':'foundation'},
				{'web':'open_process.jsp','mobile':'open_process.jsp','folder':'foundation'},
				{'web':'opening_merchant.jsp','mobile':'opening_merchant.jsp','folder':'foundation'},
				{'web':'pb_csv.jsp','mobile':'pb_csv.jsp','folder':'magazine'},
				{'web':'pb_focus.jsp','mobile':'pb_focus.jsp','folder':'magazine'},
				{'web':'pb_focus_view.jsp','mobile':'pb_focus_view.jsp','folder':'magazine'},
				{'web':'pb_now.jsp','mobile':'pb_now.jsp','folder':'magazine'},
				{'web':'pb_now_view.jsp','mobile':'pb_now_view.jsp','folder':'magazine'},
				{'web':'pb_story.jsp','mobile':'pb_story.jsp','folder':'magazine'},
				{'web':'pb_story_view.jsp','mobile':'pb_story_view.jsp','folder':'magazine'},
				{'web':'pb_video.jsp','mobile':'pb_video.jsp','folder':'magazine'},
				{'web':'index.jsp','mobile':'index.jsp','folder':'main'},
				{'web':'login.jsp','mobile':'login.jsp','folder':'member'},
				{'web':'mypage.jsp','mobile':'mypage.jsp','folder':'member'},
				{'web':'qna.jsp','mobile':'qna.jsp','folder':'member'},
				{'web':'coupon_info.jsp','mobile':'coupon_info.jsp','folder':'product'},
				{'web':'list.jsp','mobile':'list.jsp','folder':'product'},
				{'web':'list_new.jsp','mobile':'list_new.jsp','folder':'product'},
				{'web':'list_season.jsp','mobile':'list_season.jsp','folder':'product'},
				{'web':'view.jsp','mobile':'view.jsp','folder':'product'},
				{'web':'associatedcard_info.jsp','mobile':'associatedcard_info.jsp','folder':'promotion'},
				{'web':'associatedcard_info.jsp','mobile':'associatedcard_info_02.jsp','folder':'promotion'},
				{'web':'associatedcard_info.jsp','mobile':'associatedcard_info_03.jsp','folder':'promotion'},
				{'web':'associatedcard_info.jsp','mobile':'associatedcard_info_04.jsp','folder':'promotion'},
				{'web':'associatedcard_info.jsp','mobile':'associatedcard_info_05.jsp','folder':'promotion'},
				{'web':'event.jsp','mobile':'event.jsp','folder':'promotion'},
				{'web':'event_view.jsp','mobile':'event_view.jsp','folder':'promotion'},
				{'web':'event_view_test.jsp','mobile':'event_view_test.jsp','folder':'promotion'},
				{'web':'pb_news.jsp','mobile':'pb_news.jsp','folder':'promotion'},
				{'web':'pb_news_view.jsp','mobile':'pb_news_view.jsp','folder':'promotion'},
				{'web':'prizewinner.jsp','mobile':'prizewinner.jsp','folder':'promotion'},
				{'web':'prizewinner_view.jsp','mobile':'prizewinner_view.jsp','folder':'promotion'},
				{'web':'__story.jsp','mobile':'story.jsp','folder':'purchase'},
				{'web':'__yeast.jsp','mobile':'yeast.jsp','folder':'purchase'},
				{'web':'happycon.jsp','mobile':'happycon.jsp','folder':'purchase'},
				{'web':'happyorder.jsp','mobile':'happyorder.jsp','folder':'purchase'},
				{'web':'search.jsp','mobile':'search.jsp','folder':'shop'}]

var isMobile = check_current_viewmode();
if(isMobile){
	//location.href = "/mobile/";
	location.href = convertUrl('web','mobile');
}

function convertUrl($from,$to) {
	var returnStr = '';
	var url = window.location.href;
	var name = window.location.pathname.match(/[^\/]+$/)[0];
	var param = url.indexOf('?') > -1 ? url.substring( url.indexOf('?')+1, url.length ) : '';
	var len = linkArr.length;
	for (var i=0; i<len; i++) {
		if (linkArr[i][$from] == name) {
			if ($to == 'web') {
				returnStr = '/' + linkArr[i].folder + '/' + linkArr[i][$to];
			} else {
				returnStr = '/mobile/' + linkArr[i][$to];
			}
			break;
		}
	}
	if (returnStr == '') {
		if ($to == 'web') {
			returnStr = '/';
		} else {
			returnStr = '/mobile/';
		}
	}
	if (param != '') {
		returnStr += '?' + param;
	}
	return returnStr;
}

function check_current_viewmode(){
	var _check_mobile_keys = new Array('iPhone','iPod','iPad','Android','BlackBerry','Windows Phone','Windows CE','LG','MOT','SAMSUNG','SonyEricsson','Nokia');
	for(var i in _check_mobile_keys){
		if(navigator.userAgent.match(_check_mobile_keys[i]) != null){
			return true;
		}
	}
	return false;
}

//HTML5 태그 block 선언
document.createElement('header');
document.createElement('footer');
document.createElement('section');
document.createElement('aside');
document.createElement('nav');
document.createElement('article');

//운영 반영 시 변경 필요
//var SITE_ROOT = 'http://paris.malgn.co.kr/2018/';
var SITE_ROOT = '/';
var TESTMODE = true; 

//Facebook SDK
//--ezpanda@nate.com
window.fbAsyncInit = function() {
	FB.init({
		appId            : '516082098811490',
		xfbml            : true,
		version          : 'v3.1'
	});
};
(function(d, s, id){
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = "https://connect.facebook.net/en_US/all.js";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

$(document).ready(function(){

	//gnb
	$(".gnb, .dep_2_bg").mouseover(function(){
		$(".dep_2").stop().animate({height:"340px"}, 300, "linear");
		$(".dep_2_bg").stop().animate({height:"340px"}, 200, "linear", function (){
			//$('.gnb .menu_title').stop().fadeIn();
			//$('.gnb .menu_title').show();
		});
		$('.gnb .menu_title').show();
	});
	$(".gnb, .dep_2_bg").mouseout(function(){
		$(".dep_2").stop().animate({height:"0px"}, 200, "linear");
		$(".dep_2_bg").stop().animate({height:"0px"}, 300, "linear");
		$('.gnb .menu_title').stop().hide();
	});
	var cidx = 0;
	$('.gnb ul li').on('mouseover', function() {
		var idx = $('.gnb ul li').index(this) + 1;
		if (idx == cidx) return;
		cidx = idx;
		//console.log(idx);
		$('.gnb .menu_title img').hide();
		$('.gnb .menu_title img').attr('src', '../resources/images/common/menu_title_0'+idx+'.png');
		$('.gnb .menu_title img').fadeIn(200);
		$('.dep_2_bg').css('background-image', 'url("../resources/images/common/bg_gnb_2dep_0'+idx+'.gif")');
	});

	//search
	var searchmode = false;
	$('.btn_search').on('click', function() {
		if (searchmode) {
			$('#header .search_box').stop().animate({height:"36px"}, 200, "linear", function(){
				$('.search_text').val('');
				$(this).hide();
			});
		} else {
			$('#header .search_box').stop().show().animate({height:"140px"}, 200, "linear", function() {
				$('.search_text').focus();
			});
		}
		searchmode = !searchmode;
	});

	//selectbox
	;(function($){
		$.fn.listUi = function(options) {
//			var opts = $.extend({}, $.fn.tabs.defaults, options);
			return this.each(function() {
				var $select = $(this);
				var $select_list = $select.find('.select_list');
				var $select_btn = $select.find('.select_alink');
				$select.isopen = false;
				var _moveheight = $select_list.height();
				$select_btn.bind('click', function(){
					toggleOpen();
				});
				$select_list.bind('click', function(){
					toggleOpen();
				});
				function toggleOpen() {
					if ($select.isopen) {
						selectClose();
					} else {
						selectOpen();
					}
					$select.isopen = !$select.isopen;
				}
				function selectClose(){
					$select_list.stop().slideUp(500);
					//$select_list.slideToggle( "slow", function() {});
					$(document).off('click', focusOutEvent);
					$select_btn.addClass('active');
					//$select_list.hide();
				}
				function selectOpen(){
					$select_list.slideDown(500, function() {
						$(document).on('click', focusOutEvent);
					});
					//$select_list.slideToggle( "slow", function() {});
					$select_btn.removeClass('active');
					//$select_list.show();
				}
				function focusOutEvent(e) {
					$menu.isopen = false;
					selectClose();
				}
			});
		};
		   
	//$.fn.selectUi.defaults = {};
	})(jQuery);

	//scroll motion
	var $animation_elements = $('.animation-element');
	var $window = $(window);

	function check_if_in_view() {
		var window_height = $window.height();
		var window_top_position = $window.scrollTop();
		var window_bottom_position = (window_top_position + window_height);
	 
		$.each($animation_elements, function() {
			var $element = $(this);
			var element_height = $element.outerHeight();
			var element_top_position = $element.offset().top;
			var element_bottom_position = (element_top_position + element_height);
			
			if ((element_bottom_position >= window_top_position) && (element_top_position <= window_bottom_position)) {
				var pos = window_bottom_position - element_top_position;
				var max = element_height + window_height;
				animateElement($element, pos, max);
				//$element.addClass('in-view');
			} else {
				//$element.removeClass('in-view');
			}
		});
	}
	$.each($animation_elements, function() {
		//초기 위치 기억
		try {
			if ($(this).hasClass('background-vertical') || $(this).hasClass('background-to-top') || $(this).hasClass('background-to-bottom') || $(this).hasClass('background-to-right') || $(this).hasClass('background-to-left')) {
				$(this).attr('bg_x', $(this).css('background-position-x').replace('px','').replace('%','').replace('auto','0'));
				$(this).attr('bg_y', $(this).css('background-position-y').replace('px','').replace('%','').replace('auto','0'));
			} else if ($(this).hasClass('object-vertical') || $(this).hasClass('object-to-top') || $(this).hasClass('object-to-bottom') || $(this).hasClass('object-to-right') || $(this).hasClass('object-to-left')) {
				$(this).attr('ori_x', $(this).css('left').replace('px','').replace('%','').replace('auto','0'));
				$(this).attr('ori_y', $(this).css('top').replace('px','').replace('%','').replace('auto','0'));
			}
		}
		catch (e) {}

	});
	$window.on('scroll resize', check_if_in_view);
	$window.trigger('scroll');
	
	//SNS 버튼
	if ($('.share_list').length) {
		var clipboard = new ClipboardJS('.urlcopy', {
			text: function() {
				return location.href;
			}
		});
		/**/
		clipboard.on('success', function(e) {
			//console.log(e);
			alert('URL이 클립보드에 복사되었습니다.');
		});

		clipboard.on('error', function(e) {
			//console.log(e);
		});
		
		$('.share_list').hide();
		$('.share_list').find('a:eq(0)').on('click', function() {
			FB.ui({
				method: 'share',
				display: 'popup',
				href: location.href
			}, function(response){
				/*
				//console.log(response);
				if (response) {
					debug('facebook share complete');
				}
				*/
			});
			$('.share_list').slideUp(200);
		});
		$('.share_list').find('a:eq(1)').on('click', function() {
			$('.share_list').slideUp(200);
		});
		$('.share_icon, .share_link').on('click', function() {
			$('.share_list').slideToggle(200);
		});
	}
	//-----------------------------------
	$('.recruit_info').listUi();
	$('.brand_info').listUi();
	
	//-- 181113 GNB 스크롤 고정
	var hdOffset = $('#header').offset();
	$(window).scroll( function() {
		if ($(document).scrollTop() > hdOffset.top ) {
			$('#header').css('position', 'fixed');
			$('#header').css('top', '0px');
			$('#header').css('width', '100%');
			$('.blank_area').show();
		}
		else {
			$('#header').css('position', 'relative');
			$('.blank_area').hide();
		}
	});

	setPage();

});

function animateElement(el, pos, max) {
	var rate = (pos/max) * 100;
	var def;
	var mx;
	if (rate > 10 && rate < 90) {
		if (!$(el).hasClass('in-view')) {
			$(el).addClass('in-view');
			$(el).trigger('cssClassChanged');
		}
	} else {
		if ($(el).hasClass('in-view')) {
			$(el).removeClass('in-view');
			$(el).trigger('cssClassChanged');
		}
	}
	if ($(el).hasClass('background-vertical') || $(el).hasClass('background-to-top')) {
		def = $(el).attr('bg_y');
		mx = (def*1)-(rate-50);
		$(el).css('background-position-y', mx);
	} else if ($(el).hasClass('background-to-right')) {
		def = $(el).attr('bg_x');
		mx = (def*1)+(rate-50)/2;
		$(el).css('background-position-x', mx);
	} else if ($(el).hasClass('background-to-left')) {
		def = $(el).attr('bg_x');
		mx = (def*1)-(rate-50)/2;
		$(el).css('background-position-x', mx);
	} else if ($(el).hasClass('object-vertical') || $(el).hasClass('object-to-top')) {
		def = $(el).attr('ori_y');
		mx = (Math.min(rate,50)-50) * -1;
		$(el).css('opacity', (200-Math.abs(rate-50)*4)/100);
		$(el).css('transform', 'matrix(1, 0, 0, 1, 0, ' + mx + ')');
	} else if ($(el).hasClass('object-to-right')) {
		def = $(el).attr('ori_x');
		mx = (Math.min(rate,20)-20);
		$(el).css('opacity', (200-Math.abs(rate-50)*4)/100);
		$(el).css('transform', 'matrix(1, 0, 0, 1, ' + mx + ', 0)');
	} else if ($(el).hasClass('object-to-left')) {
		def = $(el).attr('ori_x');
		mx = (Math.min(rate,20)-20) * -1;
		$(el).css('opacity', (200-Math.abs(rate-50)*4)/100);
		$(el).css('transform', 'matrix(1, 0, 0, 1, ' + mx + ', 0)');
	}
}

function setPage() {
	var path = location.pathname;
	switch (true) {
		/*-- 메인 --*/
		case /^\/$/.test(path): 
		case /main/.test(path): 
		case /index/.test(path): 
			loadScript('page-main');
			break;
		/*-- 매거진 --*/
		case /magazine/.test(path): 
			loadScript('page-magazine');
			break;
		/*-- 제품소개 --*/
		case /product/.test(path): 
			loadScript('page-product');
			break;
		/*-- 구매하기 --*/
		case /purchase/.test(path): 
			loadScript('page-purchase');
			break;
		/*-- 프로모션 --*/
		case /promotion/.test(path): 
			loadScript('page-promotion');
			break;
		/*-- 매장찾기 --*/
		case /shop\/search/.test(path): 
			loadScript('page-shop');
			break;
		/*-- 고객센터 --*/
		case /customer/.test(path): 
			loadScript('page-customer');
			break;
		/*-- 창업안내 --*/
		case /foundation/.test(path): 
			loadScript('page-foundation');
			break;
	}
	return;
}

function loadScript(src) {
	//debug('loadScript : ' + src);
	var a = document.createElement('script');
	a.type = 'text/javascript';
	a.id = 'mprd-script';
	a.src = SITE_ROOT + 'resources/js/' + src + '.js';
	a.async = true;
	var c = document.currentScript;
	if (c) {
		var n = c.nonce || c.getAttribute('nonce');
		if (n) {
			a.setAttribute('nonce', n);
		}
	}
	var b = document.getElementsByTagName('script')[0];
	b.parentNode.insertBefore(a, b);
}


//------------------------------------------------------------------------
//-- 공용함수
//------------------------------------------------------------------------
//$.browser 버그 fix
(function () {
    var matched, browser;
    jQuery.uaMatch = function (ua) {
        ua = ua.toLowerCase();
 
        var match = /(chrome)[ \/]([\w.]+)/.exec(ua) ||
            /(webkit)[ \/]([\w.]+)/.exec(ua) ||
            /(opera)(?:.*version|)[ \/]([\w.]+)/.exec(ua) ||
            /(msie) ([\w.]+)/.exec(ua) ||
            ua.indexOf("compatible") < 0 && /(mozilla)(?:.*? rv:([\w.]+)|)/.exec(ua) ||
            [];
 
        return {
            browser: match[1] || "",
            version: match[2] || "0"
        };
    };
 
    matched = jQuery.uaMatch(navigator.userAgent);
    browser = {};
 
    if (matched.browser) {
        browser[matched.browser] = true;
        browser.version = matched.version;
    }
 
    // Chrome is Webkit, but Webkit is also Safari.
    if (browser.chrome) {
        browser.webkit = true;
    } else if (browser.webkit) {
        browser.safari = true;
    }
 
    jQuery.browser = browser;
})();

//select ui
(function($){
	$.fn.extend({
		customStyle : function(options) {

			if(!$.browser.msie || ($.browser.msie&&$.browser.version>6)){
				return this.each(function() {
					var currentSelected = $(this).find(':selected');
						$(this).after('<span class="customStyleSelectBox"><span class="customStyleSelectBoxInner">'+currentSelected.text()+'</span>&nbsp;</span>').css({position:'absolute', opacity:0,fontSize:$(this).next().css('font-size')});
					var selectBoxSpan = $(this).next();
					var selectBoxWidth = parseInt($(this).width()) - parseInt(selectBoxSpan.css('padding-left')) -parseInt(selectBoxSpan.css('padding-right'));
					var selectBoxSpanInner = selectBoxSpan.find(':first-child');
						selectBoxSpan.css({display:'inline-block'});
						selectBoxSpanInner.css({width:selectBoxWidth, display:'inline-block'});
					var selectBoxHeight = parseInt(selectBoxSpan.height()) + parseInt(selectBoxSpan.css('padding-top')) + parseInt(selectBoxSpan.css('padding-bottom'));
						$(this).height(selectBoxHeight).change(function(){
						selectBoxSpanInner.text($(this).find(':selected').text()).parent().addClass('changed');
					});
				});
			}
		}
	});
})(jQuery);

$(function(){
	$('.select_ui').customStyle();
});

//자리수에 맞게 앞자리 0 붙이기
function add_0(num, max) {
	if (max == undefined) {
		max = 2;
	}
	rtn = num.toString();
	return rtn.length < max ? add_0("0" + rtn, max) : rtn;
}

//3자리마다 콤마 붙이기
function digits(num) {
	console.log(num);
	var str = num.replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
	return str;
}

function debug(text) {
	if (TESTMODE) {
		try {
			console.log(':::::::::::::::::::  ' + new Date() + '  :::::::::::::::::::');
			console.log(text);
		} catch (e){}
	}
}

//URL 변수 리턴
function ckeck_addressParam(getParam){
	var _tempUrl = window.location.search.substring(1);
	
	var returnText =""
	if(_tempUrl == "") return "";
	var _tempArr = _tempUrl.split("&");
	
	for(var i = 0; _tempArr.length; i++) {
		var _tempStr = _tempArr[i]
		if(_tempStr == undefined) return;
		var _checkValue = _tempStr.split("=");
		if(_checkValue[0] == getParam){
			returnText =  _checkValue[1];
			return returnText;
		}
	}
	return returnText
} 


$(document).ready(function(){
	//jquery hover transition
	/* Another polyfill for CSS3 Transitions.
	 * This one parses a stylesheet looking for transitions happening on :hover and :focus and convert them to jQuery code.
	 *
	 * Limitations:
	 * - Use simple and coherent selectors (`#menu li` to declare the transition and `#menu li:hover` for the target style)
	 * - Detail the transition properties (`transition-property: padding-left, ...` instead of `transition: all`)
	 *
	 * Complete documentation and latest version available at https://github.com/louisremi/jquery.transition.js
	 *
	 * License: MIT or GPL
	 *
	 * Author: @louis_remi
	 */
	(function($, window, document, undefined) {var div = document.createElement("div"), divStyle = div.style, propertyName = "transition", suffix = "Transition", testProperties = [ "O" + suffix, "ms" + suffix, "Webkit" + suffix, "Moz" + suffix, propertyName ], i = testProperties.length, supportTransition, self = this;while ( i-- ) { if ( testProperties[i] in divStyle ) { supportTransition = testProperties[i]; continue; } }if ( !supportTransition ) { $(function() { var docSS = document.styleSheets, i = docSS.length, rules, j, curRule, curSelectorText, duration, transition, selectors, k, curSelector, transitionSelector = {}, pseudoSelector = {}, split, pseudo, selector;while ( i-- ) { rules = docSS[i].rules || docSS[i].cssRules; j = rules.length;while ( j-- ) { curRule = rules[j]; curSelectorText = curRule.selectorText; transition = curRule.style["transition-property"]; transition = transition ? transition.replace(/(^|,)\s*([\w-]*)[^,]*/g, "$1$2").split(","): 0; selectors = curSelectorText.split(","); k = selectors.length;if ( transition ) { duration = curRule.style["transition-duration"]; if ( duration ) { duration = parseFloat( duration ) * ( ~duration.indexOf("ms") ? 1 : 1000 ); } }while ( k-- ) { curSelector = $.trim( selectors[k] ); if ( transition ) { transitionSelector[curSelector] = { properties: transition, duration: duration }; } split = curSelector.split( pseudo = ~curSelector.indexOf(":hover")? ":hover": ~curSelector.indexOf(":focus")? ":focus": ~curSelector.indexOf(":target")? ":target": "," ); if ( split.length > 1 ) { (pseudo == ":hover" || pseudo == ":focus") && pseudoSelector[split.join("")] ? pseudoSelector[split.join("")].pseudo += " " + pseudo: pseudoSelector[split.join("")] = { pseudo: pseudo, style: curRule.style, selector: split[0], animated: split[1], id: [i, j] } } } } }var listener, delegate, animated, style, properties, temp, id, props, hfEvents; for ( selector in pseudoSelector ) { if ( ( transition = transitionSelector[selector] ) ) { temp = pseudoSelector[selector]; pseudo = temp.pseudo; animated = temp.animated; split = temp.selector; id = temp.id;properties = transition.properties; duration = transition.duration; props = {}; i = properties.length; while ( i-- ) { props[properties[i]] = temp.style[properties[i].replace(/-([a-z])/g, function( all, letter ) { return letter.toUpperCase(); })]; }docSS[id[0]].removeRule(id[1]);hfEvents = [[], []]; if ( ~pseudo.indexOf(":hover") && ( hfEvents[0].push("mouseenter"), hfEvents[1].push("mouseleave") ) || ~pseudo.indexOf(":focus") && ( hfEvents[0].push("focus"), hfEvents[1].push("blur") ) ) { listener = /^#[\w\-]* /.test(split) && ( split = split.split(" ") ) ? split[0]: document.body; delegate = typeof split != "string" ? split[1] : split;$(listener).delegate( delegate, hfEvents[0].join(" "), {a: animated, p: props, d: duration}, function( e ) { var $animated = e.data.a ? $(this).find(e.data.a) : $(this), prop, save = {}; if ( !$animated.length ) { return; } if ( !$.data( this, "initStyle" ) ) { for ( prop in e.data.p ) { save[prop] = $.css( $animated[0], prop ); } $.data( this, "initStyle", save ); } $animated.stop(true).animate( props, e.data.d );}).delegate( delegate, hfEvents[1].join(" "), {a: animated, d: duration}, function( e ) { var self = this, init = $.data( this, "initStyle" ), $animated = e.data.a ? $(this).find(e.data.a) : $(this); if ( !$animated.length ) { return; } if ( init ) { $animated .stop(true).animate( init, e.data.d ) .queue(function() { $.data( self, "initStyle", null ); }); } }); } } } }); }})(jQuery, window, document);
});


/*!
 * clipboard.js v2.0.0
 * https://zenorocha.github.io/clipboard.js
 * 
 * Licensed MIT © Zeno Rocha
 */
!function(t,e){"object"==typeof exports&&"object"==typeof module?module.exports=e():"function"==typeof define&&define.amd?define([],e):"object"==typeof exports?exports.ClipboardJS=e():t.ClipboardJS=e()}(this,function(){return function(t){function e(o){if(n[o])return n[o].exports;var r=n[o]={i:o,l:!1,exports:{}};return t[o].call(r.exports,r,r.exports,e),r.l=!0,r.exports}var n={};return e.m=t,e.c=n,e.i=function(t){return t},e.d=function(t,n,o){e.o(t,n)||Object.defineProperty(t,n,{configurable:!1,enumerable:!0,get:o})},e.n=function(t){var n=t&&t.__esModule?function(){return t.default}:function(){return t};return e.d(n,"a",n),n},e.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},e.p="",e(e.s=3)}([function(t,e,n){var o,r,i;!function(a,c){r=[t,n(7)],o=c,void 0!==(i="function"==typeof o?o.apply(e,r):o)&&(t.exports=i)}(0,function(t,e){"use strict";function n(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}var o=function(t){return t&&t.__esModule?t:{default:t}}(e),r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},i=function(){function t(t,e){for(var n=0;n<e.length;n++){var o=e[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}return function(e,n,o){return n&&t(e.prototype,n),o&&t(e,o),e}}(),a=function(){function t(e){n(this,t),this.resolveOptions(e),this.initSelection()}return i(t,[{key:"resolveOptions",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};this.action=t.action,this.container=t.container,this.emitter=t.emitter,this.target=t.target,this.text=t.text,this.trigger=t.trigger,this.selectedText=""}},{key:"initSelection",value:function(){this.text?this.selectFake():this.target&&this.selectTarget()}},{key:"selectFake",value:function(){var t=this,e="rtl"==document.documentElement.getAttribute("dir");this.removeFake(),this.fakeHandlerCallback=function(){return t.removeFake()},this.fakeHandler=this.container.addEventListener("click",this.fakeHandlerCallback)||!0,this.fakeElem=document.createElement("textarea"),this.fakeElem.style.fontSize="12pt",this.fakeElem.style.border="0",this.fakeElem.style.padding="0",this.fakeElem.style.margin="0",this.fakeElem.style.position="absolute",this.fakeElem.style[e?"right":"left"]="-9999px";var n=window.pageYOffset||document.documentElement.scrollTop;this.fakeElem.style.top=n+"px",this.fakeElem.setAttribute("readonly",""),this.fakeElem.value=this.text,this.container.appendChild(this.fakeElem),this.selectedText=(0,o.default)(this.fakeElem),this.copyText()}},{key:"removeFake",value:function(){this.fakeHandler&&(this.container.removeEventListener("click",this.fakeHandlerCallback),this.fakeHandler=null,this.fakeHandlerCallback=null),this.fakeElem&&(this.container.removeChild(this.fakeElem),this.fakeElem=null)}},{key:"selectTarget",value:function(){this.selectedText=(0,o.default)(this.target),this.copyText()}},{key:"copyText",value:function(){var t=void 0;try{t=document.execCommand(this.action)}catch(e){t=!1}this.handleResult(t)}},{key:"handleResult",value:function(t){this.emitter.emit(t?"success":"error",{action:this.action,text:this.selectedText,trigger:this.trigger,clearSelection:this.clearSelection.bind(this)})}},{key:"clearSelection",value:function(){this.trigger&&this.trigger.focus(),window.getSelection().removeAllRanges()}},{key:"destroy",value:function(){this.removeFake()}},{key:"action",set:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"copy";if(this._action=t,"copy"!==this._action&&"cut"!==this._action)throw new Error('Invalid "action" value, use either "copy" or "cut"')},get:function(){return this._action}},{key:"target",set:function(t){if(void 0!==t){if(!t||"object"!==(void 0===t?"undefined":r(t))||1!==t.nodeType)throw new Error('Invalid "target" value, use a valid Element');if("copy"===this.action&&t.hasAttribute("disabled"))throw new Error('Invalid "target" attribute. Please use "readonly" instead of "disabled" attribute');if("cut"===this.action&&(t.hasAttribute("readonly")||t.hasAttribute("disabled")))throw new Error('Invalid "target" attribute. You can\'t cut text from elements with "readonly" or "disabled" attributes');this._target=t}},get:function(){return this._target}}]),t}();t.exports=a})},function(t,e,n){function o(t,e,n){if(!t&&!e&&!n)throw new Error("Missing required arguments");if(!c.string(e))throw new TypeError("Second argument must be a String");if(!c.fn(n))throw new TypeError("Third argument must be a Function");if(c.node(t))return r(t,e,n);if(c.nodeList(t))return i(t,e,n);if(c.string(t))return a(t,e,n);throw new TypeError("First argument must be a String, HTMLElement, HTMLCollection, or NodeList")}function r(t,e,n){return t.addEventListener(e,n),{destroy:function(){t.removeEventListener(e,n)}}}function i(t,e,n){return Array.prototype.forEach.call(t,function(t){t.addEventListener(e,n)}),{destroy:function(){Array.prototype.forEach.call(t,function(t){t.removeEventListener(e,n)})}}}function a(t,e,n){return u(document.body,t,e,n)}var c=n(6),u=n(5);t.exports=o},function(t,e){function n(){}n.prototype={on:function(t,e,n){var o=this.e||(this.e={});return(o[t]||(o[t]=[])).push({fn:e,ctx:n}),this},once:function(t,e,n){function o(){r.off(t,o),e.apply(n,arguments)}var r=this;return o._=e,this.on(t,o,n)},emit:function(t){var e=[].slice.call(arguments,1),n=((this.e||(this.e={}))[t]||[]).slice(),o=0,r=n.length;for(o;o<r;o++)n[o].fn.apply(n[o].ctx,e);return this},off:function(t,e){var n=this.e||(this.e={}),o=n[t],r=[];if(o&&e)for(var i=0,a=o.length;i<a;i++)o[i].fn!==e&&o[i].fn._!==e&&r.push(o[i]);return r.length?n[t]=r:delete n[t],this}},t.exports=n},function(t,e,n){var o,r,i;!function(a,c){r=[t,n(0),n(2),n(1)],o=c,void 0!==(i="function"==typeof o?o.apply(e,r):o)&&(t.exports=i)}(0,function(t,e,n,o){"use strict";function r(t){return t&&t.__esModule?t:{default:t}}function i(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function a(t,e){if(!t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!e||"object"!=typeof e&&"function"!=typeof e?t:e}function c(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function, not "+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}function u(t,e){var n="data-clipboard-"+t;if(e.hasAttribute(n))return e.getAttribute(n)}var l=r(e),s=r(n),f=r(o),d="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},h=function(){function t(t,e){for(var n=0;n<e.length;n++){var o=e[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}return function(e,n,o){return n&&t(e.prototype,n),o&&t(e,o),e}}(),p=function(t){function e(t,n){i(this,e);var o=a(this,(e.__proto__||Object.getPrototypeOf(e)).call(this));return o.resolveOptions(n),o.listenClick(t),o}return c(e,t),h(e,[{key:"resolveOptions",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};this.action="function"==typeof t.action?t.action:this.defaultAction,this.target="function"==typeof t.target?t.target:this.defaultTarget,this.text="function"==typeof t.text?t.text:this.defaultText,this.container="object"===d(t.container)?t.container:document.body}},{key:"listenClick",value:function(t){var e=this;this.listener=(0,f.default)(t,"click",function(t){return e.onClick(t)})}},{key:"onClick",value:function(t){var e=t.delegateTarget||t.currentTarget;this.clipboardAction&&(this.clipboardAction=null),this.clipboardAction=new l.default({action:this.action(e),target:this.target(e),text:this.text(e),container:this.container,trigger:e,emitter:this})}},{key:"defaultAction",value:function(t){return u("action",t)}},{key:"defaultTarget",value:function(t){var e=u("target",t);if(e)return document.querySelector(e)}},{key:"defaultText",value:function(t){return u("text",t)}},{key:"destroy",value:function(){this.listener.destroy(),this.clipboardAction&&(this.clipboardAction.destroy(),this.clipboardAction=null)}}],[{key:"isSupported",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:["copy","cut"],e="string"==typeof t?[t]:t,n=!!document.queryCommandSupported;return e.forEach(function(t){n=n&&!!document.queryCommandSupported(t)}),n}}]),e}(s.default);t.exports=p})},function(t,e){function n(t,e){for(;t&&t.nodeType!==o;){if("function"==typeof t.matches&&t.matches(e))return t;t=t.parentNode}}var o=9;if("undefined"!=typeof Element&&!Element.prototype.matches){var r=Element.prototype;r.matches=r.matchesSelector||r.mozMatchesSelector||r.msMatchesSelector||r.oMatchesSelector||r.webkitMatchesSelector}t.exports=n},function(t,e,n){function o(t,e,n,o,r){var a=i.apply(this,arguments);return t.addEventListener(n,a,r),{destroy:function(){t.removeEventListener(n,a,r)}}}function r(t,e,n,r,i){return"function"==typeof t.addEventListener?o.apply(null,arguments):"function"==typeof n?o.bind(null,document).apply(null,arguments):("string"==typeof t&&(t=document.querySelectorAll(t)),Array.prototype.map.call(t,function(t){return o(t,e,n,r,i)}))}function i(t,e,n,o){return function(n){n.delegateTarget=a(n.target,e),n.delegateTarget&&o.call(t,n)}}var a=n(4);t.exports=r},function(t,e){e.node=function(t){return void 0!==t&&t instanceof HTMLElement&&1===t.nodeType},e.nodeList=function(t){var n=Object.prototype.toString.call(t);return void 0!==t&&("[object NodeList]"===n||"[object HTMLCollection]"===n)&&"length"in t&&(0===t.length||e.node(t[0]))},e.string=function(t){return"string"==typeof t||t instanceof String},e.fn=function(t){return"[object Function]"===Object.prototype.toString.call(t)}},function(t,e){function n(t){var e;if("SELECT"===t.nodeName)t.focus(),e=t.value;else if("INPUT"===t.nodeName||"TEXTAREA"===t.nodeName){var n=t.hasAttribute("readonly");n||t.setAttribute("readonly",""),t.select(),t.setSelectionRange(0,t.value.length),n||t.removeAttribute("readonly"),e=t.value}else{t.hasAttribute("contenteditable")&&t.focus();var o=window.getSelection(),r=document.createRange();r.selectNodeContents(t),o.removeAllRanges(),o.addRange(r),e=o.toString()}return e}t.exports=n}])});