//------------------------------------------------------------------------
//-- INDEX
//------------------------------------------------------------------------
setIndex();

function setIndex() {
	debug('index start');
	//top banner
	$('.main .topbanner .close_btn').on('click', function() {
		$('.main .topbanner').hide();
	});

	//PB STORY
	var storySlider = $('#story_slide').bxSlider({
		mode				: 'fade',
		speed				: 500,
		randomStart			: false,
		useCSS				: false,
		preloadImages		: 'all',
		pager				: true,
		pagerType			: 'full',
		controls			: false,
		slideWidth			: 1900,
		slideMargin			: 0,
		autoHover			: false,
		auto				: true,
		infiniteLoop		: true,
		pause				: 2000,//4000 에서 2000 으로 수정 181106
		autoHover			: true,
		responsive			: false,
		touchEnabled		: false,
		adaptiveHeight		: false,
		minSlides			: 1,
		maxSlides			: 10,
		moveSlides			: 1,
		shrinkItems			: true
	});
	$('.content_01 .btn_prev').on('click', function(e) {
		e.preventDefault();
		if (storySlider.isWorking()) return;
		storySlider.stopAuto();
		storySlider.goToPrevSlide();
		return false; 
	});
	$('.content_01 .btn_next').on('click', function(e) {
		e.preventDefault();
		if (storySlider.isWorking()) return;
		storySlider.stopAuto();
		storySlider.goToNextSlide();
		return false; 
	});

	//PB TECH
	var techSlider = $('#tech_slide').bxSlider({
		mode				: 'fade',
		speed				: 500,
		randomStart			: false,
		infiniteLoop		: true,
		useCSS				: false,
		preloadImages		: 'all',
		pager				: true,
		pagerType			: 'full',
		controls			: false,
		slideWidth			: 1900,
		slideMargin			: 0,
		autoHover			: false,
		auto				: false,
		responsive			: false,
		touchEnabled		: false,
		adaptiveHeight		: false,
		minSlides			: 1,
		maxSlides			: 10,
		moveSlides			: 1,
		shrinkItems			: true
	});
	$('.content_02 .btn_prev').on('click', function(e) {
		e.preventDefault();
		if (techSlider.isWorking()) return;
		techSlider.stopAuto();
		techSlider.goToPrevSlide();
		return false; 
	});
	$('.content_02 .btn_next').on('click', function(e) {
		e.preventDefault();
		if (techSlider.isWorking()) return;
		techSlider.stopAuto();
		techSlider.goToNextSlide();
		return false; 
	});

	//PB DESSERT
	var dessertSlider = $('#dessert_slide').bxSlider({
		mode				: 'fade',
		speed				: 500,
		randomStart			: false,
		infiniteLoop		: true,
		useCSS				: false,
		preloadImages		: 'all',
		pager				: true,
		pagerType			: 'full',
		controls			: false,
		slideWidth			: 1900,
		slideMargin			: 0,
		autoHover			: false,
		auto				: false,
		responsive			: false,
		touchEnabled		: false,
		adaptiveHeight		: false,
		minSlides			: 1,
		maxSlides			: 10,
		moveSlides			: 1,
		shrinkItems			: true
	});
	$('.content_05 .btn_prev').on('click', function(e) {
		e.preventDefault();
		if (dessertSlider.isWorking()) return;
		dessertSlider.stopAuto();
		dessertSlider.goToPrevSlide();
		return false; 
	});
	$('.content_05 .btn_next').on('click', function(e) {
		e.preventDefault();
		if (dessertSlider.isWorking()) return;
		dessertSlider.stopAuto();
		dessertSlider.goToNextSlide();
		return false; 
	});
/*
	//PB'S PICK
	var ps_max = $('#pick_slide li').length * 240;
	$('#pick_slide').css('width', ps_max);
	$('#pick_slide li').each(function(i) {
		$(this).css({
			'float': 'left',
			'list-style': 'none',
			'position': 'relative',
			'width': '240px'
		});
	});

	//$(document).on('mousemove', function(e) {
	$('.rolling_img_list').on('mousemove', function(e) {
		var ps_ratio = (ps_max-$(document).innerWidth()) / $(document).innerWidth();
		var moveX = e.clientX * ps_ratio * -1;
		//$('#pick_slide').stop().animate({left:moveX}, 1, "linear");
		$('#pick_slide').css('left', moveX);
	});
	*/
}