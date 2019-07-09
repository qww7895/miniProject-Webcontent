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
		<img src="resources/images/promotion/visual_img.jpg" alt="">
		<h3>구매하기</h3>
		<p>
			<span>HOME</span>
			<span>구매하기</span>
			<strong>딜리버리 메뉴</strong>
		</p>
	</div><!--visual-->

	<div id="container">
		<aside>
			<ul>
				<li><a href="happyorder.pc">파바 딜리버리</a></li>
				<li><a href="happycon.pc">딜리버리 메뉴</a></li>
				<li class="on"><a href="happyday.pc">파바데이</a></li>
			</ul>
		</aside>

		<div class="contents">
			<div class="content content_01" style="margin-left:10%; max-width: 100%; height: auto;">
				<img src="resources/images/promotion/happyday_img_01.jpg" alt="">
				<a href="https://bit.ly/2WYXwYY" onclick="#" class="link_01" target="_blank"><img src="resources/images/bg_blank.png" alt="나의 혜택 확인하러 가기" /></a>
			</div><!--content_01-->

			<div class="content content_02" id="searchshop" style="display:none;">
				<div class="text_title">파바 딜리버리 매장 찾기</div>

				<form name="form1" method="get">
				<div class="search_form_01">
					<div class="select_ui_box" id="d_sido">
						<select class="select_ui" style="width:247px" id="s_sido" name="s_sido" onchange="callGugun();">
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
					<div class="select_ui_box" id="d_gugun">
						<select class="select_ui" style="width:247px" name="s_gugun" id="s_gugun" onchange="setGugun(this);">
							<option value="">시/구/군 선택</option>
						</select>
					</div>
					<div class="select_ui_box" id="d_deliver">
						<select class="select_ui" style="width:150px" name="s_deliver" id="s_deliver">
							<option value="">선택</option>
							<option value="Y">배달/픽업</option>
							<option value="N">픽업</option>
						</select>
					</div>
					<input type="text" class="inp" placeholder="주소, 매장명 검색" name="s_name" />
					<a href="javascript:goSubmit();"><img src="resources/images/search_form_01_btn_search.gif" alt="검색" /></a>
				</div><!--search_form_01-->
				</form>
				<script type='text/javascript'>
//<![CDATA[
function __setElement(el, v, a) { if(v) v = v.replace(/__&LT__/g, '<').replace(/__&GT__/g, '>'); if(typeof(el) != 'object' && typeof(el) != 'function') return; if(v != null) switch(el.type) { case 'text': case 'hidden': case 'password': case 'file': case 'email': el.value = v; break; case 'textarea': el.value = v; break; case 'checkbox': case 'radio': if(el.value == v) el.checked = true; else el.checked = false; break; case 'select-one': for(var i=0; i<el.options.length; i++) if(el.options[i].value == v) el.options[i].selected = true; break; default: for(var i=0; i<el.length; i++) if(el[i].value == v) el[i].checked = true; el = el[0]; break; } if(typeof(a) == 'object') { if(el.type != 'select-one' && el.length > 1) el = el[0]; for(i in a) el.setAttribute(i, a[i]); } }
if(_f = document.forms['form1']) {
	__setElement(_f['s_sido'], null, {});
	__setElement(_f['s_gugun'], null, {});
	__setElement(_f['s_name'], null, {});
	__setElement(_f['s_deliver'], null, {});
	if(!_f.onsubmit) _f.onsubmit = function() { return validate(this); };
}
//]]>
</script>

				<div class="list_style_02">
					<table border="0" cellspacing="0" cellpadding="0" summary="매장명, 주소, 전화번호">
						<caption>상품권 취급 매장 찾기</caption>
						<colgroup>
							<col width="222" />
							<col width="640" />
							<col width="150" />
							<col width="188" />
						</colgroup>
						<thead>
							<tr>
								<th>매장명</th>
								<th>주소</th>
								<th>배달/픽업</th>
								<th>전화번호</th>
							</tr>
						</thead>
						<tbody>
							
							<tr>
								<td><a href="shop/search.jsp?id=NDMwMgEQUALEQUAL">Rodriguez Range</a></td>
								<td>경기도 포천시 영중면 영평리 Rodriguez Range</td>
								<td>픽업</td>
								<td>031-111-2222</td>
							</tr>
							
							<tr>
								<td><a href="shop/search.jsp?id=NDU4MgEQUALEQUAL">PB휘닉스파크</a></td>
								<td>강원 평창군 봉평면 태기로 174 센터프라자 1층</td>
								<td>픽업</td>
								<td>033-3306-6349</td>
							</tr>
							
							<tr>
								<td><a href="shop/search.jsp?id=NDcyMwEQUALEQUAL">PB한남더힐</a></td>
								<td>서울 용산구 독서당로 71 (한남동) </td>
								<td>배달/픽업</td>
								<td>02-790-8281</td>
							</tr>
							
							<tr>
								<td><a href="shop/search.jsp?id=NDcyMgEQUALEQUAL">PB중앙대학교</a></td>
								<td>서울 동작구 흑석로 47 (흑석동) 102관 B117호</td>
								<td>픽업</td>
								<td>02-812-2155</td>
							</tr>
							
							<tr>
								<td><a href="shop/search.jsp?id=NDcyMQEQUALEQUAL">PB인천공항 플라워</a></td>
								<td>인천 중구 제2터미널대로 444 (운서동) 인천공항 일반동 1층</td>
								<td>픽업</td>
								<td>032-743-7204</td>
							</tr>
							
						</tbody>
					</table>
				</div><!--list_style_02-->
				<style>.page_box { display:table; margin:0 auto; }.page_box ul { margin:0px; list-style:none; padding:0px; }.page_box li { float:left; margin:0px; padding:0px; }.page_box .page_margin { overflow:hidden !important; }</style><div class='page_box'><ul><li><div class='page_first_btn' title='First Page'><!----></div></li><li><div class='page_prev_btn' title='Previous 10 Pages'><!----></div></li><li><div class='page_p_btn' title='Previous Page'><!----></div></li><li class='page_margin'>&nbsp;</li><li><div class='page_number_btn_on'>1</div></li><li><div class='page_seperator'><!----></div></li><li><a href='/purchase/happyday.jsp?page=2'><div class='page_number_btn'>2</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/purchase/happyday.jsp?page=3'><div class='page_number_btn'>3</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/purchase/happyday.jsp?page=4'><div class='page_number_btn'>4</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/purchase/happyday.jsp?page=5'><div class='page_number_btn'>5</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/purchase/happyday.jsp?page=6'><div class='page_number_btn'>6</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/purchase/happyday.jsp?page=7'><div class='page_number_btn'>7</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/purchase/happyday.jsp?page=8'><div class='page_number_btn'>8</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/purchase/happyday.jsp?page=9'><div class='page_number_btn'>9</div></a></li><li><div class='page_seperator'><!----></div></li><li><a href='/purchase/happyday.jsp?page=10'><div class='page_number_btn'>10</div></a></li><li class='page_margin'>&nbsp;</li><li><a href='/purchase/happyday.jsp?page=2' class='on'><div class='page_n_btn' title='Next Page'><!----></div></a></li><li><a href='/purchase/happyday.jsp?page=11' class='on'><div class='page_next_btn' title='Next 10 Pages'><!----></div></a></li><li><a href='/purchase/happyday.jsp?page=692' class='on'><div class='page_last_btn' title='Last Page'><!----></div></a></li><li style='clear:both; margin:0px; padding:0px; height:0px; border-width:0px; overflow-x:hidden; overflow-y:hidden;'></li></ul></div>
			</div><!--content_02-->
		</div><!--contents-->
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
			<div class="customer_info"><img src="resources/images/customer_num.gif" alt="080-731-2027 평일 09:00 - 17:00 (점심 12:00 - 13:00)" /></div>
			<div class="logo_info">
				<p><a href="http://www.spc.co.kr/contributionAll" target="_blank"><img src="resources/images/footer_logo_img_01.gif" alt="" /></a></p>
				<span><img src="resources/images/footer_logo_img_02.gif" alt="" /></span>
				<span><img src="resources/images/footer_logo_img_03.gif" alt="" /></span>
				<span><img src="resources/images/footer_logo_img_04.gif" alt="" /></span>
				<span><img src="resources/images/footer_logo_img_05.gif" alt="" /></span>
			</div>
			<div class="social_info">
				<a href="https://www.facebook.com/loveparisbaguette" target="_blank"><img src="resources/images/btn_social_01.gif" alt="페이스북" /></a>
				<a href="http://instagram.com/parisbaguette_kr" target="_blank"><img src="resources/images/btn_social_02.gif" alt="인스타그램" /></a>
				<a href="https://www.youtube.com/loveparisbaguette" target="_blank"><img src="resources/images/btn_social_03.gif" alt="유튜브" /></a>
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
<script>
function goSubmit() {
	var f = document.forms['form1'];
	f.submit();
}
$(document).ready(function() {							
	init();	
	if('' != "") {
		//$(".customStyleSelectBox:last > .customStyleSelectBoxInner").html('');
		$("#d_gugun .customStyleSelectBoxInner").html('');
	} else {
		//$(".customStyleSelectBox:last > .customStyleSelectBoxInner").html("시/구/군 선택");
		$("#d_gugun .customStyleSelectBoxInner").html("시/구/군 선택");
	}
	if("" != "" || "" != "" || "" != "" || "" != "") location.href = "#searchshop";
});		
function callGugun() {
	var v = GetFormValue('form1', 's_sido');
	if(v == "") {
		//$(".customStyleSelectBox:last > .customStyleSelectBoxInner").html("시/구/군 선택");
		$("#d_gugun .customStyleSelectBoxInner").html("시/구/군 선택");
	}
	call("promotion/call_gugun.jsp?sido=" + encodeURIComponent(v), "s_gugun");
}
function init() {
	var v = GetFormValue('form1', 's_sido');
	if (!v) return;
	call("promotion/call_gugun.jsp?sido=" + encodeURIComponent(v) + "&v=" + encodeURIComponent('') + "", "s_gugun");
}
function setGugun(el) {
	//if(!el) el.value = "시/구/군 선택";
	//$(".customStyleSelectBox:last > .customStyleSelectBoxInner").html(el.value);
	var tmp = "";
	if(!el || el.value == "") {
		tmp = "시/구/군 선택";
	} else {
		tmp = el.value;
	}
	$("#d_gugun .customStyleSelectBoxInner").html(tmp);
}

</script>

</body>
</html>