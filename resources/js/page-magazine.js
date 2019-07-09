//------------------------------------------------------------------------
//-- MEGAZIONE
//------------------------------------------------------------------------
var path = location.pathname;
var score = {num:0};
switch (true) {
	case /magazine\/pb_now/.test(path): 
	case /magazine\/pb_focus/.test(path): 
	case /magazine\/pb_story/.test(path): 
		setMagazine();
		break;
	case /magazine\/pb_video/.test(path): 
		setPbPR();
		break;
	case /magazine\/pb_csv/.test(path): 
		setSocialContribution();
		break;
}

function setMagazine() {
	debug('magazine start');
	//매거진 슬라이드
	var magazineSlider = $('#magazine_slide').bxSlider({
		mode				: 'fade',
		speed				: 500,
		randomStart			: false,
		infiniteLoop		: false,
		useCSS				: false,
		preloadImages		: 'all',
		pager				: false,
		pagerType			: 'full',
		controls			: false,
		slideWidth			: 1200,
		slideMargin			: 0,
		autoHover			: false,
		auto				: false,
		responsive			: false,
		touchEnabled		: false,
		adaptiveHeight		: false,
		minSlides			: 1,
		maxSlides			: 1,
		moveSlides			: 1,
		shrinkItems			: true
	});
	
	$('.rolling_style_04 .btn_prev').on('click', function(e) {
		e.preventDefault();
		if (magazineSlider.isWorking()) return;
		magazineSlider.stopAuto();
		magazineSlider.goToPrevSlide();
		checkMagazinePage();
		return false; 
	});
	$('.rolling_style_04 .btn_next').on('click', function(e) {
		e.preventDefault();
		if (magazineSlider.isWorking()) return;
		magazineSlider.stopAuto();
		magazineSlider.goToNextSlide();
		checkMagazinePage();
		return false; 
	});
	
	var checkMagazinePage = function() {
		var idx = magazineSlider.getCurrentSlide() + 1;
		var max = magazineSlider.getSlideCount();
		$('.bullet_box strong').text(add_0(idx));
		$('.bullet_box span').text(add_0(max));
		
		$('.rolling_style_04 .btn_prev').hide();
		$('.rolling_style_04 .btn_next').hide();
		if (idx != 1) {
			$('.rolling_style_04 .btn_prev').show();
		}
		if (idx != max) {
			$('.rolling_style_04 .btn_next').show();
		}
		//동영상 처리
		$('#magazine_slide').find('li').each(function() {
			if ($(this).find('iframe').length > 0)
			{
				$(this).find('iframe').get(0).contentWindow.postMessage(JSON.stringify({
					"event": "command",
					"func": "pauseVideo"
				}), "*");
			}
		});
	};
	checkMagazinePage();
}


//------------------------------------------------------------------------
//-- PB VIDEO
//------------------------------------------------------------------------
function setPbPR() {
	debug('PB PR');
	$('.popup_pb_video .btn_close a').on('click', function() {
		closeDetailPop();
	});
}
function openDetailPop(title, content, src, vide) {
	//TODO - interface
	var title = title;
	var content = content;
	var isVideo = vide == "T" ? true : false;
	var src = src;
	//var isVideo = false;
	//var src = 'http://paris.malgn.co.kr/2018/resources/images/magazine/rolling_style_04_img_01.jpg';
	
	if (isVideo) {
		$('.popup_pb_video .video_box').html('<iframe width="100%" height="100%" src=' + src + '?rel=0&amp;controls=0&amp;showinfo=0&amp;enablejsapi=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
	} else {
		$('.popup_pb_video .video_box').html('<img src="' + src + '" width="100%" height="100%" />');
	}
	$('.popup_pb_video .text_info strong').text(title);
	$('.popup_pb_video .text_info p').text(content);
	$('.dim').fadeIn();
	$('.popup').css("top", $(window).scrollTop() + ( $(window).height() - $('.popup').height()) / 2);
	$('.popup_pb_video').fadeIn();
}
function closeDetailPop() {
	//동영상 처리
	/* -- 181130 라이브러리가 바뀌었는지 적용되지 않음
	if ($('.popup_content').find('iframe').length > 0) {
		$('.popup_content').find('iframe').get(0).contentWindow.postMessage(JSON.stringify({
			"event": "command",
			"func": "stopVideo"
		}), "*");
	}
	*/
	$('.popup_pb_video .video_box').html('');
	//
	$('.dim').fadeOut();
	$('.popup_pb_video').fadeOut();
}

//------------------------------------------------------------------------
//-- 사회공원활동
//------------------------------------------------------------------------
function setSocialContribution() {
	debug('social_contribution');
	$('.sum').on('cssClassChanged', sumCssEvent);

	$('.popup_nanumday .btn_close a').on('click', function() {
		closePop();
	});
	//viewNumberChange();

	//character_img motion
	//$('.character_img img').css('transition', 'all 0.5s');
	$('.character_img').each(function() {
		$(this).attr('ori_x', $(this).css('left').replace('px','').replace('%','').replace('auto','0'));
		$(this).attr('ori_y', $(this).css('top').replace('px','').replace('%','').replace('auto','0'));
	});
	$(window).on('mousemove', characterMove);
}
function sumCssEvent(e) {
	var $target = $(e.target);
	//console.log($target.hasClass('in-view'));
	if ($target.hasClass('in-view')) {
		viewNumberChange();
	} else {
		
	}
}
function characterMove(e) {
	$('.character_img').each(function() {
		//if ($(this).hasClass('in-view')) {
			var disX = (e.pageX - $(this).attr('ori_x')) / 50 * (($(window).width()/2-$(this).attr('ori_x'))/500);
			var disY = (e.pageY - $(this).attr('ori_y')) / 50;
			$(this).find('img').css('transform', 'translate3d('+disX+'px, '+disY+'px, 0px)');
		//}
	});
}
//--사회공헌액 모션
function viewNumberChange(){
	score.num = 0;
	TweenMax.to(score, 1, {num:100000000000, roundProps:"num", onUpdate:updateNumChange, ease:Cubic.easeIn});
}
function updateNumChange() {
	var str = add_0(score.num, 12).replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	$(".sum strong").html(str+"+");
}
//우리동네 빵빵나눔데이 신청팝업
function openPop() {
	$('.dim').fadeIn();
	$('.popup').css("top",$(window).scrollTop() + 150);
	$('.popup_nanumday').fadeIn();
}
function closePop() {
	$('.dim').fadeOut();
	$('.popup_nanumday').fadeOut();
}
