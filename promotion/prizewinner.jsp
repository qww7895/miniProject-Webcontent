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
               <p><a href="search.sp">창업안내</a></p>
               <div class="dep_2">
                  <a href="search.sp">가맹점 개설</a>
                  <a href="search.sp">경영주 모집</a>
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
		<img src="resources/images/promotion/visual_img.jpg" alt="" />
		<h3>프로모션</h3>
		<p>
			<span>HOME</span>
			<span>프로모션</span>
			<strong>당첨자 발표</strong>
		</p>
	</div><!--visual-->

	<div id="container">
		
		<aside>
			<ul>
				<li><a href="event.pr">이벤트</a></li>
				<li class="on"><a href="prizewinner.pr">당첨자 발표</a></li>
				<li><a href="associatedcard_info.pr">제휴 카드 안내</a></li>
				<li><a href="pb_news.pr">PB 공지</a></li>
			</ul>
		</aside>
		
		<div class="contents">
			<div class="title">
				<p>파리바게뜨 이벤트 당첨여부를 알려드립니다.</p>
			</div>

			<div class="list_style_02">
				<table border="0" cellspacing="0" cellpadding="0" summary="NO, 분류, 제목, 등록일">
					<caption>당첨자 발표</caption>
					<colgroup>
						<col width="81" />
						<col width="125" />
						<col width="774" />
						<col width="140" />
					</colgroup>
					<thead>
						<tr>
							<th>NO</th>
							<th>분류</th>
							<th>제목</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody>
						
						<tr>
							<td>39</td>
							<td>[합격자 발표]</td>
							<td>
								
								
								<a href="https://www.paris.co.kr/promotion/event_view.jsp?id=542" target="_blank">
								
									제27기 파리바게뜨 트렌드헌터 최종 합격자 발표
								</a>
							</td>
							<td>2018.12.07</td>
						</tr>
						
						<tr>
							<td>38</td>
							<td>[합격자 발표]</td>
							<td>
								
								
								<a href="http://www.paris.co.kr/promotion/prizewinner_view.jsp?id=502" target="_blank">
								
									제26기 파리바게뜨 트렌드헌터 최종 합격자 발표
								</a>
							</td>
							<td>2018.12.03</td>
						</tr>
						
						<tr>
							<td>37</td>
							<td>[합격자 발표]</td>
							<td>
								
								
								<a href="https://www.paris.co.kr/promotion/prizewinner_view.jsp?id=492" target="_blank">
								
									소비자패널 최종합격자 발표
								</a>
							</td>
							<td>2018.12.03</td>
						</tr>
						
						<tr>
							<td>36</td>
							<td>[합격자 발표]</td>
							<td>
								
								<a href="prizewinner_view.jsp?id=499&">
								
								
									제26기 파리바게뜨 트렌드헌터 서류 합격자 발표
								</a>
							</td>
							<td>2018.06.04</td>
						</tr>
						
						<tr>
							<td>35</td>
							<td>[합격자 발표]</td>
							<td>
								
								
								<a href="http://www.paris.co.kr/promotion/prizewinner_view.jsp?id=487" target="_blank">
								
									소비자패널 서류합격자 발표
								</a>
							</td>
							<td>2018.12.03</td>
						</tr>
						
						<tr>
							<td>34</td>
							<td>[합격자 발표]</td>
							<td>
								
								
								<a href="http://www.paris.co.kr/promotion/prizewinner_view.jsp?id=474" target="_blank">
								
									소비자패널 서류합격자 발표
								</a>
							</td>
							<td>2018.12.03</td>
						</tr>
						
						<tr>
							<td>33</td>
							<td>[합격자 발표]</td>
							<td>
								
								
								<a href="http://www.paris.co.kr/promotion/prizewinner_view.jsp?id=458" target="_blank">
								
									제25기 파리바게뜨 트렌드헌터 최종 합격자 발표
								</a>
							</td>
							<td>2018.12.03</td>
						</tr>
						
						<tr>
							<td>32</td>
							<td>[합격자 발표]</td>
							<td>
								
								
								<a href="https://www.paris.co.kr/promotion/prizewinner_view.jsp?id=456" target="_blank">
								
									제25기 파리바게뜨 트렌드헌터 서류 합격자 발표
								</a>
							</td>
							<td>2018.12.03</td>
						</tr>
						
						<tr>
							<td>31</td>
							<td>[합격자 발표]</td>
							<td>
								
								
								<a href="http://www.paris.co.kr/promotion/prizewinner_view.jsp?id=446" target="_blank">
								
									소비자패널 최종 합격자 발표
								</a>
							</td>
							<td>2018.12.03</td>
						</tr>
						
						<tr>
							<td>30</td>
							<td>[합격자 발표]</td>
							<td>
								
								
								<a href="http://www.paris.co.kr/promotion/prizewinner_view.jsp?id=445" target="_blank">
								
									소비자패널 서류합격자 발표
								</a>
							</td>
							<td>2018.12.03</td>
						</tr>
						
					</tbody>
				</table>
			</div><!--list_style_02-->

			<style>.page_box { display:table; margin:0 auto; }.page_box ul { margin:0px; list-style:none; padding:0px; }.page_box li { float:left; margin:0px; padding:0px; }.page_box .page_margin { overflow:hidden !important; }</style><div class='page_box'><ul><li><div class='page_first_btn' title='First Page'><!----></div></li><li><div class='page_prev_btn' title='Previous 10 Pages'><!----></div></li><li><div class='page_p_btn' title='Previous Page'><!----></div></li><li class='page_margin'>&nbsp;</li><li><div class='page_number_btn_on'>1</div></li><li><div class='page_seperator'><!----></div></li><li><a href='/promotion/prizewinner.jsp?page=2'><div class='page_number_btn'>2</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/promotion/prizewinner.jsp?page=3'><div class='page_number_btn'>3</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/promotion/prizewinner.jsp?page=4'><div class='page_number_btn'>4</div></a></li><li class='page_margin'>&nbsp;</li><li><a href='/promotion/prizewinner.jsp?page=2' class='on'><div class='page_n_btn' title='Next Page'><!----></div></a></li><li><div class='page_next_btn' title='Next 10 Pages'><!----></div></li><li><a href='/promotion/prizewinner.jsp?page=4' class='on'><div class='page_last_btn' title='Last Page'><!----></div></a></li><li style='clear:both; margin:0px; padding:0px; height:0px; border-width:0px; overflow-x:hidden; overflow-y:hidden;'></li></ul></div>
		</div><!--contents-->

	</div>

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

</body>
</html>