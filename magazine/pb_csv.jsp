<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>파리바게뜨</title>
<meta name="keywords" content="파리바게뜨">
<meta name="description" content="파리바게뜨 공식 홈페이지 입니다. 메뉴, 매장, 이벤트, 매장정보, 점포개설문의 등 제공">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="naver-site-verification" content="e10738f030b75b9cf5c9c8b71b438ea267d785c6"/>

<meta property="og:url" content="https://www.paris.co.kr" />
<meta property="og:type" content="website" />
<meta property="og:title" content="파리바게뜨" />
<meta property="og:description" content="파리바게뜨 공식 홈페이지 입니다. 메뉴, 매장, 이벤트, 매장정보, 점포개설문의 등 제공" />
<meta property="og:image" content="" />

<link rel="stylesheet" type="text/css" href="resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="resources/css/jquery.bxslider.css">

<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="resources/js/common.js"></script>
<script type="text/javascript" src="js/common.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-123335739-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-123335739-1');
</script>


<!-- 20190131 추가 -->
<!-- Global site tag (gtag.js) - Google Ads: 883141872 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-883141872"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'AW-883141872');
</script>


<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PHXCBLL');</script>
<!-- End Google Tag Manager -->

</head>


<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PHXCBLL"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<body>
   <div id="wrap" class="main">
      
      <div class="content topbanner">
         <p><img src="data/file/48f54be47bff4b6a27287751ecee78a8.jpg" alt="메인상단" /></p>
         <a href="http://www.paris.co.kr/purchase/happyorder.jsp"><img src="resources/images/common/bg_blank.png" alt="자세히 보기" /></a>
         <a href="#none" class="close_btn"><img src="resources/images/common/bg_blank.png" alt="닫기" /></a>
      </div>
      
      <div id="header">
   <header>
      <div class="logo"><a href="main.gg"><img src="resources/images/common/logo.gif" alt="PARIS BAGUETTE" /></a></div>
      <div class="top_link">
         
	 <%@ page import="java.util.*"%>
	 <%@ page import="java.text.SimpleDateFormat" %>
     <%if(session.getAttribute("id")==null){ %><!-- 로그인이 되지 않았을떄 -->    
         <a href="MemberLogin.log">로그인</a>
         <a href="JoinForm.log">회원가입</a>
        <%}else{ %>
        <a><%=session.getAttribute("id")%> 님</a>
         <% if((int)session.getAttribute("admin")==1){ %>
         <a href="manager.ad">관리자 페이지</a>
         <%} %>
         <a href="Membersearch.log?id=<%=session.getAttribute("id") %>">마이 페이지</a>
         <a href="MemberLogout.log">로그아웃</a>
        <%} %>
        
      </div>
      <nav class="gnb">
         <ul>
            <li>
      				<p><a href="pb_now.mag">매거진</a></p>
					<div class="dep_2">
					<a href="pb_now.mag">PB NOW</a>
					<a href="pb_focus.mag">PB FOCUS</a>
					<a href="pb_video.mag">PB VIDEO</a>
					<a href="pb_story.mag">PB STORY</a>
					<a href="pb_csv.mag">PB CSV</a>  
               </div>
            </li>
            <li>
					<p><a href="list_new.pb">제품소개</a></p>
					<div class="dep_2">
						
						<a href="list_new.pb">신제품</a>
												
						<a href="list.pb?pid=PDC00000004">빵</a>
						
						<a href="list.pb?pid=PDC00000006">케이크</a>
						
						<a href="list.pb?pid=PDC00000028">선물</a>
						
						<a href="list.pb?pid=PDC00000032">샌드위치</a>
						
						<a href="list.pb?pid=PDC00000033">디저트</a>
						
						<a href="list.pb?pid=PDC00000034">음료</a>
						
						<a href="list.pb?pid=PDC00000021">캐릭터</a>
						
						<a href="list.pb?pid=PDC00000035">PB Collection</a>
						
						<a href="coupon_info.pb">상품권</a>
               </div>
            </li>
            <li>
					<p><a href="happyorder.pc">구매하기</a></p>
					<div class="dep_2">
						<a href="happyorder.pc">파바 딜리버리</a>
						<a href="happycon.pc">딜리버리 메뉴</a>
						<a href="happyday.pc">파바데이</a>
               </div>
            </li>
            <li>
               <p><a href="event.pr">프로모션</a></p>
               <div class="dep_2">
                  <a href="event.pr">이벤트</a>
                  <a href="prizewinner.pr">당첨자 발표</a>
                  <a href="associatedcard_info.pr">제휴카드 안내</a>
                  <a href="pb_news.pr">PB 공지</a>
               </div>
            </li>
            <li>
               <p><a href="search.sp">매장찾기</a></p>
               <div class="dep_2">
                  <a href="search.sp">매장찾기</a>
                  <a href="praise.sp">고객센터</a>
               </div>
            </li>
            <li>
               <p><a href="opening_merchant.fd">창업안내</a></p>
               <div class="dep_2">
                  <a href="opening_merchant.fd">가맹점 개설</a>
                  <a href="manager_recruit.fd">경영주 모집</a>
               </div>
            </li>
         </ul>
         <div class="menu_title" style="display:none"><img src="resources/images/common/menu_title_01.png" alt="" /></div>
      </nav>
      <form name="search_form" method="get" onsubmit="return checkSearch();">
      <p class="btn_search"><a href="#none"><img src="resources/images/common/btn_search_open.gif" alt="검색" /></a></p>
      <div class="search_box" style="display:none">
         <p>
            <input type="text" name="q" class="search_text" placeholder="검색어를 입력하세요" />
            <a href="javascript:checkSearch();"><img src="resources/images/common/header_btn_search.gif" alt="검색" /></a>
         </p>
      </div>
      </form>
      <script>
      function checkSearch() {
         var f = document.forms['search_form'];

         var v = f['q'].value;
         v = v.replace(/%/g, '');
         if(v.length < 1) { alert("검색어를 입력하세요."); return; }

         f.action = "/etc/unified_search.jsp";
         f.submit();
      }
      </script>

   </header>
   <div class="dep_2_bg menu_01"></div>
   <!-- <div class="floating_banner" id="floating_banner" style="position:absolute; top:165px; right:100px; z-index:100; display: none;">
      <a href="https://www.paris.co.kr/purchase/happyday.jsp" target="_blank"><img src="resources/images/common/floating_banner.png" title="파바데이 아이스캔디 1+1"></a>
      <div class="popup_bottom" style="width:100%; height:25px; line-height:2; text-align:right; padding-right:10px;">
         <a href="javascript:closePopupNotToday()" style="color:#fff;">하루동안 닫기</a>
      </div>
   </div> -->
</div><!--header-->
<div class="blank_area" style="display:none;height:140px;"></div>


<script>
if(getCookie("notToday")!="Y"){
      $("#floating_banner").show();
}

function closePopupNotToday(){                
      setCookie('notToday','Y', 1);
      $("#floating_banner").hide();
}
function setCookie(name, value, expiredays) {
   var today = new Date();
       today.setDate(today.getDate() + expiredays);

       document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
}

function getCookie(name) 
{ 
    var cName = name + "="; 
    var x = 0; 
    while ( x <= document.cookie.length ) 
    { 
        var y = (x+cName.length); 
        if ( document.cookie.substring( x, y ) == cName ) 
        { 
            if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
                endOfCookie = document.cookie.length;
            return unescape( document.cookie.substring( y, endOfCookie ) ); 
        } 
        x = document.cookie.indexOf( " ", x ) + 1; 
        if ( x == 0 ) 
            break; 
    } 
    return ""; 
}
function closeMainPopup(){
   $("#floating_banner").hide();
}

</script>

	
	<div class="visual">
		<img src="resources/images/magazine/visual_img.jpg" alt="" />
		<h3>매거진</h3>
		<p>
			<span>HOME</span>
			<span>매거진</span>
			<strong>PB CSV</strong>
		</p>
	</div><!--visual-->

	<div id="container">
		<aside>
			<ul>
				<li><a href="pb_now.mag">PB NOW</a></li>
				<li><a href="pb_focus.mag">PB FOCUS</a></li>
				<li><a href="pb_video.mag">PB VIDEO</a></li>
				<li><a href="pb_story.mag">PB STORY</a></li>
				<li class="on"><a href="pb_csv.mag">PB CSV</a></li>
			</ul>
		</aside>
		
		<div class="contents">
			<div class="text_content text_content_01">
				<p><span><strong>SPC그룹</strong>은</span>상생의 기업문화를 바탕으로 CSR(기업의  사회적 책임)을 넘어<br/>CSV(공유가치 창출) 경영을 확대해 나가고 있습니다.</p>
				<p>파리바게뜨는 오늘도 공유와 나눔의 가치를 바탕으로 <br/>다양한 사회공헌활동을 실천하고 있습니다.</p>
				<div class="sum animation-element">
					<strong>100,000,000,000+</strong>
					SPC그룹  사회공헌 누적금액 1,000억 돌파
				</div>
			</div>
			<div class="text_content text_content_02">
				<ul>
					<li class="animation-element object-to-left">
						<dl>
							<dt>푸드뱅크 <strong>사업 선도</strong></dt>
							<dd>SPC그룹은 1998년 이후부터 기업의 사회적 책임의 일환으로 <br/>푸드뱅크 사업에 적극 참여하고 있습니다. <br/>결식 아동, 무의탁 노인, 소년소녀 가장, 모자 세대 등에 <br/>사랑의 식품을 나누는<br/>푸드뱅크 운동에 앞장서 왔습니다.<br/>
							<a href="javascript:goOpenPop();">우리동네 빵빵나눔데이 신청하기</a>
							</dd>
						</dl>
					</li>
					<li class="animation-element object-to-right">
						<dl>
							<dt><strong>‘SPC 행복한재단’</strong> 설립 및<br/><strong>‘SPC 해피봉사단’</strong> 출범</dt>
							<dd>계열사에서 자체적으로 추진하고 있는 <br/>사회공헌 활동을 그룹 차원에서 <br/>통합 추진하여 전 임직원이 참여할 수 있는 <br/>기반을 만들었습니다.</dd>
						</dl>
					</li>
					<li class="animation-element object-to-left">
						<dl>
							<dt><strong>‘SPC 행복한 장학금’</strong> 운영</dt>
							<dd>꿈꾸는 젊은이들 의 내일을 위하여, <br/>아르바이트 대학생 중에서 선발하여 <br/>등록금의 절반을 지원해주는 제도를 운영합니다.</dd>
						</dl>
					</li>
					<li class="animation-element object-to-right">
						<dl>
							<dt>가맹점주 자녀 <strong>장학금 지원</strong></dt>
							<dd>SPC 그룹 계열사 가 맹점을 1년 이상 운영한 가맹점주의 대학생 자녀 중<br/>학업성적이 우수한 학생들을 선발하여<br/>장학금 100만원씩 지원하는 제도를 운영합니다.</dd>
						</dl>
					</li>
					<li class="animation-element object-to-left">
						<dl>
							<dt>천원의 기적, <strong>행복한 펀드</strong></dt>
							<dd>저소득 가정의 장애아동 재활치료비를 지원하는 캠페인으로, SPC그룹 임직원이<br/>매월 1인당 1,000원을 기부하면 회사가 일정액의 매칭 펀드를 조성해 기부하는<br/>프로그램을 운영합니다.</dd>
						</dl>
					</li>
					<li class="animation-element background-vertical">
						<dl>
							<dt class="animation-element object-vertical">장애아동 가족 힐링 프로그램, <strong> ‘SPC  행복한 가족’</strong></dt>
							<dd class="animation-element object-vertical">반복된 재활치료로 지친 장애아동 가족들에게 힐링  가족 여행을 선사하며,<br/>장애아동과 가족들을 초대해 케이크 만들기 교실과 커피 교실을 진행합니다.</dd>
						</dl>
					</li>
					<li class="animation-element background-to-left">
						<dl>
							<dt class="animation-element object-to-right">행복한 <strong> 빵 나눔 차</strong></dt>
							<dd class="animation-element object-to-right">‘행복한 빵 나눔 트럭’이라고 불리우는 특별한 트럭들이 매일 새벽, <br/>당일 생산된 신선한 빵을 싣고 <br/>전국 아동복지시설을 찾아가 아이들에게 빵을 선물합니다. <br/>하루 평균 1,500개씩 연간 30만 개의 빵을 전달하고 있습니다.</dd>
						</dl>
					</li>
					<li class="animation-element background-to-right">
						<dl>
							<dt class="animation-element object-to-left">행복한 봉 사의 날,<br/><strong>‘해피 프라이데이’</strong></dt>
							<dd class="animation-element object-to-left">매주 금요일을 해피 프라이데이로 정하고 임직원이 소외된 이웃을 찾아가 <br/>물품을 지원하거나 재능을 나누는 자원봉사활동을 펼칩니다.</dd>
						</dl>
					</li>
					<li class="animation-element background-to-left">
						<dl>
							<dt class="animation-element object-to-right">SPC&Soul<br/><strong>행복한 베이커리 교실</strong></dt>
							<dd class="animation-element object-to-right">장애인의 일자리 창출 과 경제적 자립을 <br/>위해 마련된 교실로, 제과제빵 기술교육과 교육설비, 프로그램을 지원하여 <br/>장애인들이 스스로 일어설 수 있도록 돕고 있습니다.</dd>
						</dl>
					</li>
					<li class="animation-element background-vertical">
						<dl>
							<dt class="animation-element object-to-left">SPC그룹의<br/><strong>특별한 우리밀 사랑</strong></dt>
							<dd class="animation-element object-to-left">우리밀을 재배하는 농가와 지방자치단체들과 상생협력하여<br/>우리밀 자급 확대에 힘쓰고 있습니다. <br/>우리밀 제품을 지속적으로 출시하며, <br/>우리밀 생산성과 품질 향상을 위한 품종개량 사업을 <br/>적극 지원하고 있습니다.</dd>
						</dl>
					</li>
					<li class="animation-element background-vertical">
						<dl>
							<dt class="animation-element object-vertical">CSV 경영의 결실<br/><strong>‘밀크플러스·요거트플러스’</strong></dt>
							<dd class="animation-element object-vertical">서울대학교와 산학협력으로, 체지방 감소 효과가 있는 천연 CLA 함량을 높이고, <br/>오메가의 이상적인 비율을 맞춘 유제품을 출시하였습니다.</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt class="animation-element object-vertical">농축산물 직거래 통해 <br/><strong>CSV 경영 실천</strong></dt>
							<dd class="animation-element object-vertical">전국 농가와 구매협약을 맺어 찹쌀, 딸기, 파프리카, 사과 등 우리 농산물을 구매하여 <br/>다양한 제품을 출시하였습니다. 파리바게뜨 해외 매장에서 미니사과 등을 수출·홍보하여 <br/>국산 농축산물의 경쟁력 강화를 돕습니다.</dd>
						</dl>
					</li>
				</ul>

				<div class="character_img character_img_01 animation-element"><img src="resources/images/brand/character_img_01.png" alt="" /></div>
				<div class="character_img character_img_02 animation-element"><img src="resources/images/brand/character_img_02.png" alt="" /></div>
				<div class="character_img character_img_03 animation-element"><img src="resources/images/brand/character_img_03.png" alt="" /></div>
				<div class="character_img character_img_04 animation-element"><img src="resources/images/brand/character_img_04.png" alt="" /></div>
				<div class="character_img character_img_05 animation-element"><img src="resources/images/brand/character_img_05.png" alt="" /></div>
				<div class="character_img character_img_06 animation-element"><img src="resources/images/brand/character_img_06.png" alt="" /></div>
				<div class="character_img character_img_07 animation-element"><img src="resources/images/brand/character_img_07.png" alt="" /></div>
				<div class="character_img character_img_08 animation-element"><img src="resources/images/brand/character_img_08.png" alt="" /></div>
			</div>
		</div><!--contents-->
		<div class="content_bg content_bg_01"></div>
		<div class="content_bg content_bg_02"></div>
		<div class="content_bg content_bg_03"></div>
	</div><!--container-->

	<div id="footer">
	<footer>
		<div class="footer_link">
			<a href="http://www.spc.co.kr" target="_blank">회사소개</a>
			<a href="foundation/opening_merchant.jsp" target="_self">가맹점</a>
			<a href="http://happy.spc.co.kr" target="_blank">거래희망사전등록</a>
			<a href="https://www.happypointcard.com/serviceCenter/term1.spc" target="_blank">이용약관</a>
			<a href="etc/popEmail.jsp" target="_blank">이메일무단수집거부</a>
			<a href="etc/popPrivacy.jsp" target="_blank">개인정보처리방침</a>
			<a href="etc/popImgInfoPolicy.jsp" target="_blank">영상정보처리기기운영관리방침</a>
			<a href="http://www.spc.co.kr/spc/smile/group/GEM_info.spc" target="_blank">윤리신고센터</a>
			<a href="/customer/praise.jsp">고객센터</a>
		</div>
		<div class="recruit_info">
			<a href="#none" class="select_alink active">Recruit Info</a>
			<ul class="select_list" style="display:none;">
				<li><a href="http://www.pb-partners.co.kr/" target="_blank">샌드위치 셰프모집</a></li>
				<li><a href="http://www.pb-partners.co.kr/" target="_blank">제빵기사 취업전문</a></li>
				<li><a href="https://spc.recruiter.co.kr/" target="_blank">채용</a></li>
			</ul>
		</div>
		<div class="footer_info_01">
			<div class="customer_info"><img src="resources/images/common/customer_num.gif" alt="080-731-2027 평일 09:00 - 17:00 (점심 12:00 - 13:00)" /></div>
			<div class="logo_info">
				<p><a href="http://www.spc.co.kr/contributionAll" target="_blank"><img src="resources/images/common/footer_logo_img_01.gif" alt="" /></a></p>
				<span><img src="resources/images/common/footer_logo_img_02.gif" alt="" /></span>
				<span><img src="resources/images/common/footer_logo_img_03.gif" alt="" /></span>
				<span><img src="resources/images/common/footer_logo_img_04.gif" alt="" /></span>
				<span><img src="resources/images/common/footer_logo_img_05.gif" alt="" /></span>
			</div>
			<div class="social_info">
				<a href="https://www.facebook.com/loveparisbaguette" target="_blank"><img src="resources/images/common/btn_social_01.gif" alt="페이스북" /></a>
				<a href="http://instagram.com/parisbaguette_kr" target="_blank"><img src="resources/images/common/btn_social_02.gif" alt="인스타그램" /></a>
				<a href="https://www.youtube.com/loveparisbaguette" target="_blank"><img src="resources/images/common/btn_social_03.gif" alt="유튜브" /></a>
			</div>
		</div><!--footer_info_01-->
		<div class="footer_info_02">
			<address>
				경기도 성남시 중원구 상대원동 사기막골로 31번길 18 (주) 파리크라상<br/>
				All Rights Reserved &copy; PARIS BAGUETTE, PARIS CROISSANT CO., LTD.
			</address>
			<div class="brand_info">
				<a href="#none" class="select_alink active">Brand Site</a>
				<ul class="select_list" style="display:none">
					<li><strong>파리크라상</strong></li>
					<li><a href="http://www.pariscroissant.co.kr/" target="_blank" title="파리크라상">파리크라상</a></li>
					<li><a href="http://www.caffe-pascucci.co.kr/" target="_blank" title="파스쿠찌">파스쿠찌</a></li>
					<li><a href="http://www.pbchina.cn" target="_blank" title="파리바게뜨 중국">파리바게뜨 중국</a></li>
					<li><strong>비알코리아(주)</strong></li>
					<li><a href="http://www.baskinrobbins.co.kr/" target="_blank" title="배스킨라빈스">배스킨라빈스</a></li>
					<li><a href="http://www.dunkindonuts.co.kr/" target="_blank" title="던킨도너츠">던킨도너츠</a></li>
					<li><strong>기타</strong></li>
					<li><a href="http://www.shany.co.kr/" target="_blank" title="(주)샤니">(주)샤니</a></li>
					<li><a href="http://www.samlipgf.co.kr/" target="_blank" title="(주)삼립식품">(주)삼립식품</a></li>
					<li><a href="http://www.happypointcard.com/" target="_blank" title="해피포인트">해피포인트</a></li>
					<li><a href="http://dining.spc.co.kr/" target="_blank" title="SPC외식브랜드">SPC외식브랜드</a></li>
					<li><a href="http://www.dqueenscatering.com/" target="_blank" title="디퀸즈케이터링">디퀸즈케이터링</a></li>
				</ul>
			</div>
		</div><!--footer_info_02-->
	</footer>
</div><!--footer-->



<!-- AceCounter Log Gathering Script V.71.2010011401 -->
<script type="text/javascript">
if(typeof _GUL == 'undefined'){
var _GUL = 'gtb7.acecounter.com';var _GPT='8080'; var _AIMG = new Image(); var _bn=navigator.appName; var _PR = location.protocol=="https:"?"https://"+_GUL:"http://"+_GUL+":"+_GPT;if( _bn.indexOf("Netscape") > -1 || _bn=="Mozilla"){ setTimeout("_AIMG.src = _PR+'/?cookie';",1); } else{ _AIMG.src = _PR+'/?cookie'; };
document.writeln("<scr"+"ipt language='javascript' src='/acecounter/acecounter_V70.js'></scr"+"ipt>");
}
</script>
<noscript><img src='http://gtb7.acecounter.com:8080/?uid=AH2A35661643126&je=n&' border=0 width=0 height=0 alt="에이스카운트"/></noscript>
<!-- AceCounter Log Gathering Script End -->

<!-- This script is for AceCounter START -->
<script type="text/javascript">
var _ag   = 0 ;         // 로그인사용자 나이
var _id   = '';    		// 로그인사용자 아이디
var _mr   = '';        	// 로그인사용자 결혼여부 ('single' , 'married' )
var _gd   = '';         // 로그인사용자 성별 ('man' , 'woman')
var _skey = '' ;        // 내부검색어

var _jn = '' ;          //  가입탈퇴 ( 'join','withdraw' )
var _jid = '' ;			// 가입시입력한 ID

var _ud1 = '' ;			// 사용자 정의변수 1 ( 1 ~ 10 정수값)
var _ud2 = '' ;			// 사용자 정의변수 2 ( 1 ~ 10 정수값)
var _ud3 = '' ;			// 사용자 정의변수 3 ( 1 ~ 10 정수값)
</script>
<!-- AceCounter END -->



</div>

<div class="dim" style="display:none"></div>
<div class="popup popup_nanumday" style="display:none">
	<form name="form1" target="sifrm" method="post" enctype="multipart/form-data">
	<div class="popup_content">
		<div class="title">우리동네 빵빵 나눔데이 신청</div>
		<div class="text_info">
			<dl>
				<dt>우리동네 빵빵 나눔데이란</dt>
				<dd>지역사회의 어려움을 돕고<br/>지원하는 친지역 사회적<br/>사회공헌활동입니다.</dd>
			</dl>
			<dl>
				<dt>MEMORY + HELP</dt>
				<dd>도움이 필요한 우리동네<br/>이웃에게 찾아가 <br/>소중한 추억을 선물합니다.</dd>
			</dl>
			<dl>
				<dt>파리바게뜨 38곳 참여</dt>
				<dd>누구보다도 지역내 어려운 이웃과<br/>상황을 아는 우리 동네의<br/>빵빵한 지원자가 되겠습니다.</dd>
			</dl>
		</div>
		<div class="text_title">신청서 작성</div>
		<div class="text_content_01">
			<div class="table_form_01">
				<table border="0" cellspacing="0" cellpadding="0" summary="제목, 이메일, 연락처, 희망장소, 희망일, 신청활동, 참여인원, 사연내용, 첨부파일">
					<caption>신청서 작성</caption>
					<colgroup>
						<col width="250" />
						<col width="720" />
					</colgroup>
					<tbody>
						<tr>
							<th>제목</th>
							<td><input type="text" class="inp inp_700" id="csrSubject" name="subject"/></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input type="text" class="inp inp_700" name="email" /></td>
						</tr>
						<tr>
							<th>연락처</th>
							<td><input type="text" class="inp inp_700" placeholder="010-0000-0000   연락받을 전화번호를 입력해주세요." name="mobile"/></td>
						</tr>
						<tr>
							<th>희망장소</th>
							<td>
								<div class="select_ui_box">
									<select class="select_ui" style="width:340px" name="hope_sido" onchange="callGugun();">
										<option value="">도/시 선택</option>
										
										<option value="강원도">강원도</option>
										
										<option value="경기도">경기도</option>
										
										<option value="경상남도">경상남도</option>
										
										<option value="경상북도">경상북도</option>
										
										<option value="광주광역시">광주광역시</option>
										
										<option value="대구광역시">대구광역시</option>
										
										<option value="대전광역시">대전광역시</option>
										
										<option value="부산광역시">부산광역시</option>
										
										<option value="서울특별시">서울특별시</option>
										
										<option value="세종특별자치시">세종특별자치시</option>
										
										<option value="울산광역시">울산광역시</option>
										
										<option value="인천광역시">인천광역시</option>
										
										<option value="전라남도">전라남도</option>
										
										<option value="전라북도">전라북도</option>
										
										<option value="제주특별자치도">제주특별자치도</option>
										
										<option value="충청남도">충청남도</option>
										
										<option value="충청북도">충청북도</option>
										
									</select>
								</div>
								<div class="select_ui_box">
									<select class="select_ui" style="width:340px" name="hope_gugun" id="hope_gugun" onchange="setGugun(this);">
										<option>시/구/군 선택</option>
									</select>
								</div>
								<script>
								function callGugun() {
									var v = GetFormValue('form1', 'hope_sido');
									if(v == "") {
										$(".customStyleSelectBox:last > .customStyleSelectBoxInner").html("시/구/군 선택");
									}
									call("promotion/call_gugun.jsp?sido=" + encodeURIComponent(v), "hope_gugun");
								}
								function setGugun(el) {
									
									if(!el) el.value = "시/구/군 선택";
									$(".customStyleSelectBox").each(function(idx) {
										if(idx == 1) $(this).children(".customStyleSelectBoxInner").html(el.value);
									});
								}
								</script>
							</td>
						</tr>
						<tr>
							<th>희망일</th>
							<td>
								<!--
								<input type="text" class="inp inp_347" />
								&nbsp;<a href="#none"><img src="resources/images/common/btn_calendar.png" alt="달력" /></a>
								-->
								<select class="select_ui" style="width:220px" name="hope_year" id="hopeYear">
									<option value="">년도</option>
									
									<option value="2014">2014년</option>
									
									<option value="2015">2015년</option>
									
									<option value="2016">2016년</option>
									
									<option value="2017">2017년</option>
									
									<option value="2018">2018년</option>
									
									<option value="2019">2019년</option>
									
									<option value="2020">2020년</option>
									
									<option value="2021">2021년</option>
									
									<option value="2022">2022년</option>
									
									<option value="2023">2023년</option>
									
								</select>
								<select class="select_ui" style="width:220px" name="hope_month" id="hopeMonth">
									<option value="">월</option>
									
									<option value="01">01월</option>
									
									<option value="02">02월</option>
									
									<option value="03">03월</option>
									
									<option value="04">04월</option>
									
									<option value="05">05월</option>
									
									<option value="06">06월</option>
									
									<option value="07">07월</option>
									
									<option value="08">08월</option>
									
									<option value="09">09월</option>
									
									<option value="10">10월</option>
									
									<option value="11">11월</option>
									
									<option value="12">12월</option>
									
								</select>
								<select class="select_ui" style="width:220px" name="hope_day" id="hopeDay">
									<option value="">일</option>
									
									<option value="01">01일</option>
									
									<option value="02">02일</option>
									
									<option value="03">03일</option>
									
									<option value="04">04일</option>
									
									<option value="05">05일</option>
									
									<option value="06">06일</option>
									
									<option value="07">07일</option>
									
									<option value="08">08일</option>
									
									<option value="09">09일</option>
									
									<option value="10">10일</option>
									
									<option value="11">11일</option>
									
									<option value="12">12일</option>
									
									<option value="13">13일</option>
									
									<option value="14">14일</option>
									
									<option value="15">15일</option>
									
									<option value="16">16일</option>
									
									<option value="17">17일</option>
									
									<option value="18">18일</option>
									
									<option value="19">19일</option>
									
									<option value="20">20일</option>
									
									<option value="21">21일</option>
									
									<option value="22">22일</option>
									
									<option value="23">23일</option>
									
									<option value="24">24일</option>
									
									<option value="25">25일</option>
									
									<option value="26">26일</option>
									
									<option value="27">27일</option>
									
									<option value="28">28일</option>
									
									<option value="29">29일</option>
									
									<option value="30">30일</option>
									
									<option value="31">31일</option>
									
								</select>
							</td>
						</tr>
						<tr>
							<th>신청활동</th>
							<td>
								<div class="select_ui_box">
									<select class="select_ui" style="width:695px" name="category_id">
										<option value="">선택해 주세요.</option>
										
										<option value="CAKE">케익교실</option>
										
										<option value="COOKIE">쿠키교실</option>
										
										<option value="SNACK">간식지원</option>
										
										<option value="ETC">기타지원</option>
										
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th>참여인원</th>
							<td><input type="text" class="inp inp_347" name="person_cnt" /> 명</td>
						</tr>
						<tr>
							<th>사연내용</th>
							<td><textarea name="content" cols="30" rows="5"></textarea></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td>
								<div class="file_ui_text">
									<input type="text"  id="file_route" class="file_text" readonly="readonly" title="첨부된 파일경로" />
									<span class="file_wrap">
									이미지선택
									<input type="file" class="file_add" onchange="javascript:document.getElementById('file_route').value=this.value" name="filename" />
									</span>
								</div><!--file_ui_text-->
							</td>
						</tr>
					</tbody>
				</table>
			</div><!--table_form_01-->
		</div><!--text_content_01-->
		<div class="text_title">개인정보 수집이용 동의 안내</div>
		<div class="text_content_02">
			<div class="privacy_table_list">
				<table border="0" cellspacing="0" cellpadding="0" summary="개인정보 수집이용 동의 안내 정보">
					<caption>개인정보 수집이용 동의 안내 정보</caption>
					<colgroup>
						<col width="323" />
						<col width="322" />
						<col width="323" />
					</colgroup>
					<thead>
						<tr>
							<th>개인정보 수집 이용목적</th>
							<th>수집하는 개인정보 항목</th>
							<th>개인정보 보유 및 이용기간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>우리동네 빵빵 나눔데이 신청</td>
							<td>이름, 연락처(전화번호,휴대폰번호),<br/>이메일, 제목, 희망장소, 신청활동,<br/>인원, 사연내용</td>
							<td>- 미채택 사연의 경우 파기<br/>- 사연신청 및 완료된 경우 종료시점으로부터<br/>3개월 보유 후 파기</td>
						</tr>
						<tr>
							<td  colspan="3">
								※ 위의 개인정보 수집이용에 대한 동의를 거부할 권리가 있습니다. <br/>
								그러나 동의를 거부할 경우 우리동네 빵빵 나눔데이의 신청서비스 제공에 일부 제한을 받을 수 있습니다.<br/>
								※ 개인 정보로 등록된 이메일 및 휴대폰 번호로 연락드릴 예정이오니, 등록된 개인 정보 확인 부탁드립니다.<br/>
								※ 파일첨부를 제외한 모든 입력사항이 필수 입력 사항입니다.<br/>
								※ 본 게시판에 목적과 부합되지 않는 글은 임의로 삭제될 수 있으니 양해바랍니다.<br/>
								※ 본 게시판은 글자수 2000자까지 입력하실 수 있습니다.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="privacy_radio_check">
				<div class="radio_ui">
					<p><input type="radio" class="inp_radio" id="privacy_01" name="is_agree" value="Y" /><label for="privacy_01">동의함</label></p>
					<p><input type="radio" class="inp_radio" id="privacy_02" name="is_agree" value="N" checked/><label for="privacy_02">동의하지 않음</label></p>
				</div>
			</div>
			<a href="javascript:goSubmit();" class="btn_request">신청하기</a>
		</div><!--text_content_02-->
	</div><!--popup_content-->
	</form>
	<script type='text/javascript'>
//<![CDATA[
function __setElement(el, v, a) { if(v) v = v.replace(/__&LT__/g, '<').replace(/__&GT__/g, '>'); if(typeof(el) != 'object' && typeof(el) != 'function') return; if(v != null) switch(el.type) { case 'text': case 'hidden': case 'password': case 'file': case 'email': el.value = v; break; case 'textarea': el.value = v; break; case 'checkbox': case 'radio': if(el.value == v) el.checked = true; else el.checked = false; break; case 'select-one': for(var i=0; i<el.options.length; i++) if(el.options[i].value == v) el.options[i].selected = true; break; default: for(var i=0; i<el.length; i++) if(el[i].value == v) el[i].checked = true; el = el[0]; break; } if(typeof(a) == 'object') { if(el.type != 'select-one' && el.length > 1) el = el[0]; for(i in a) el.setAttribute(i, a[i]); } }
if(_f = document.forms['form1']) {
	__setElement(_f['subject'], null, {hname:'제목', required:'Y'});
	__setElement(_f['email'], '', {hname:'이메일', required:'Y'});
	__setElement(_f['mobile'], '', {hname:'연락처', required:'Y'});
	__setElement(_f['hope_sido'], null, {hname:'희망장소', required:'Y'});
	__setElement(_f['hope_gugun'], null, {hname:'희망장소', required:'Y'});
	__setElement(_f['hope_year'], null, {hname:'희망일', required:'Y'});
	__setElement(_f['hope_month'], null, {hname:'희망일', required:'Y'});
	__setElement(_f['hope_day'], null, {hname:'희망일', required:'Y'});
	__setElement(_f['category_id'], null, {hname:'신청활동', required:'Y'});
	__setElement(_f['person_cnt'], null, {hname:'참여인원', option:'number'});
	__setElement(_f['content'], null, {hname:'사연내용'});
	__setElement(_f['filename'], null, {hname:'첨부파일', allow:'jpg|gif|png|jpeg|zip|xls|xlsx|txt'});
	if(!_f.onsubmit) _f.onsubmit = function() { return validate(this); };
}
//]]>
</script>
	<div class="btn_close"><a href="#none"><img src="resources/images/common/btn_popup_close.gif" alt="닫기" /></a></div>
</div><!--popup-->
<iframe src="" id="sifrm" name="sifrm" width="100%" height="0" scrolling="no" frameborder="0"></iframe>
<script>
function goSubmit() {
	var f = document.forms['form1'];

    if(!validate(f)) { 
      return; 
    }
    if (f["is_agree"].value != 'Y') {
      alert("개인정보 수집에 동의하셔야 신청이 가능합니다.");
      return;
    }

	f.submit();
  }
</script>
<script>
function goOpenPop() {
	

	
	alert('로그인 후 이용해주세요.');
	location.href = '/sso/business.jsp';
	
}
</script>


</html>