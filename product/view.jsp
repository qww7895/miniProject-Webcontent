<%@page import="net.product.db.ProductBean"%>
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
		
	<div id="wrap" class="product product_view">
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
      <img src="resources/images/product/visual_img.jpg" alt="" />
      <h3>제품소개</h3>
      <p>
         <span>HOME</span>
         <strong>제품소개</strong>
      </p>
   </div><!--visual-->

   <div id="container">

      <aside>
 			<ul>
				
				<li><a href="list_new.pb">신제품</a></li>
				<li <% if( request.getParameter("pid").equals("PDC00000004")){ %>class="on"<%}else{ %>class=""<%} %>><a href="list.pb?pid=PDC00000004">빵</a></li>
				<li <% if( request.getParameter("pid").equals("PDC00000006")){ %>class="on"<%}else{ %>class=""<%} %>><a href="list.pb?pid=PDC00000006">케이크</a></li>
				<li <% if( request.getParameter("pid").equals("PDC00000028")){ %>class="on"<%}else{ %>class=""<%} %>><a href="list.pb?pid=PDC00000028">선물</a></li>
				<li <% if( request.getParameter("pid").equals("PDC00000032")){ %>class="on"<%}else{ %>class=""<%} %>><a href="list.pb?pid=PDC00000032">샌드위치</a></li>
				<li <% if( request.getParameter("pid").equals("PDC00000033")){ %>class="on"<%}else{ %>class=""<%} %>><a href="list.pb?pid=PDC00000033">디저트</a></li>
				<li <% if( request.getParameter("pid").equals("PDC00000034")){ %>class="on"<%}else{ %>class=""<%} %>><a href="list.pb?pid=PDC00000034">음료</a></li>
				<li <% if( request.getParameter("pid").equals("PDC00000021")){ %>class="on"<%}else{ %>class=""<%} %>><a href="list.pb?pid=PDC00000021">캐릭터</a></li>
				<li <% if( request.getParameter("pid").equals("PDC00000035")){ %>class="on"<%}else{ %>class=""<%} %>><a href="list.pb?pid=PDC00000035">PB Collection</a></li>
				
				<li><a href="coupon_info.pb">상품권</a></li>
			</ul>
			<center>
				
				<%String category=request.getParameter("s_category"); %>
				<%if(category==null)category=""; %>
				
				<% if( request.getParameter("pid").equals("PDC00000004")){ %><!-- 빵 -->
				<div class="dep2" style="display:block">
					
					<a href="list.pb?pid=PDC00000004" <%if(category.equals("")){ %>class="on"<%}else{ %>class=""<%} %>">전체보기</a>
					<a href="list.pb?pid=PDC00000004&s_category=PDC00000005" <%if( category.equals("PDC00000005") ){ %>class="on"<%}else{ %>class=""<%} %>>간식빵</a>
					<a href="list.pb?pid=PDC00000004&s_category=PDC00000008" <%if( category.equals("PDC00000008") ){ %>class="on"<%}else{ %>class=""<%} %>>식빵</a>
					<a href="list.pb?pid=PDC00000004&s_category=PDC00000011" <%if( category.equals("PDC00000011") ){ %>class="on"<%}else{ %>class=""<%} %>>건강빵</a>
					<a href="list.pb?pid=PDC00000004&s_category=PDC00000007" <%if( category.equals("PDC00000007") ){ %>class="on"<%}else{ %>class=""<%} %>>도넛</a>
					<a href="list.pb?pid=PDC00000004&s_category=PDC00000009" <%if( category.equals("PDC00000009") ){ %>class="on"<%}else{ %>class=""<%} %>">페스츄리/파이</a>
				</div>
				<%}else if( request.getParameter("pid").equals("PDC00000006")){ %><!-- 케이크 -->
				<div class="dep2" style="display:block">
					<a href="list.pb?pid=PDC00000006" <%if(category.equals("")){ %>class="on"<%}else{ %>class=""<%} %>">전체보기</a>
					<a href="list.pb?pid=PDC00000006&s_category=PDC00000016" <%if( category.equals("PDC00000016") ){ %>class="on"<%}else{ %>class=""<%} %>>생크림케이크</a>
					<a href="list.pb?pid=PDC00000006&s_category=PDC00000019" <%if( category.equals("PDC00000019") ){ %>class="on"<%}else{ %>class=""<%} %>>축하케이크</a>
					<a href="list.pb?pid=PDC00000006&s_category=PDC00000018" <%if( category.equals("PDC00000018") ){ %>class="on"<%}else{ %>class=""<%} %>>조각케이크</a>
					<a href="list.pb?pid=PDC00000006&s_category=PDC00000015" <%if( category.equals("PDC00000015") ){ %>class="on"<%}else{ %>class=""<%} %>>대형케이크</a>
					<a href="list.pb?pid=PDC00000006&s_category=PDC00000017" <%if( category.equals("PDC00000017") ){ %>class="on"<%}else{ %>class=""<%} %>>선물용케이크</a>
					<a href="list.pb?pid=PDC00000006&s_category=PDC00000039" <%if( category.equals("PDC00000039") ){ %>class="on"<%}else{ %>class=""<%} %>>시즌케이크</a>
				</div>
				<%}else if( request.getParameter("pid").equals("PDC00000028")){ %><!-- 선물 -->
				<div class="dep2" style="display:block">
					<a href="list.pb?pid=PDC00000028" <%if(category.equals("")){ %>class="on"<%}else{ %>class=""<%} %>">전체보기</a>
					<a href="list.pb?pid=PDC00000028&s_category=PDC00000070" <%if( category.equals("PDC00000070") ){ %>class="on"<%}else{ %>class=""<%} %>>롤케이크</a>
					<a href="list.pb?pid=PDC00000028&s_category=PDC00000071" <%if( category.equals("PDC00000071") ){ %>class="on"<%}else{ %>class=""<%} %>>파운드/카스테라</a>
					<a href="list.pb?pid=PDC00000028&s_category=PDC00000072" <%if( category.equals("PDC00000072") ){ %>class="on"<%}else{ %>class=""<%} %>>구움과자/전통선물</a>
					<a href="list.pb?pid=PDC00000028&s_category=PDC00000073" <%if( category.equals("PDC00000073") ){ %>class="on"<%}else{ %>class=""<%} %>>etc(초코/캔디 등)</a>
				</div>
				<%}else if( request.getParameter("pid").equals("PDC00000032")){ %><!-- 샌드위치 -->
				<div class="dep2" style="display:block">
					<a href="list.pb?pid=PDC00000032" <%if(category.equals("")){ %>class="on"<%}else{ %>class=""<%} %>">전체보기</a>
					<a href="list.pb?pid=PDC00000032&s_category=PDC00000037" <%if( category.equals("PDC00000037") ){ %>class="on"<%}else{ %>class=""<%} %>>샌드위치's</a>
					<a href="list.pb?pid=PDC00000032&s_category=PDC00000038" <%if( category.equals("PDC00000038") ){ %>class="on"<%}else{ %>class=""<%} %>>샐러드</a>
					<a href="list.pb?pid=PDC00000032&s_category=PDC00000036" <%if( category.equals("PDC00000036") ){ %>class="on"<%}else{ %>class=""<%} %>>HOT샌드위치</a>
					<a href="list.pb?pid=PDC00000032&s_category=PDC00000074" <%if( category.equals("PDC00000074") ){ %>class="on"<%}else{ %>class=""<%} %>>HMR/스프</a>
				</div>
				
				<%}else if( request.getParameter("pid").equals("PDC00000033")){ %><!-- 디저트 -->
				<div class="dep2" style="display:block">
					<a href="list.pb?pid=PDC00000033" <%if(category.equals("")){ %>class="on"<%}else{ %>class=""<%} %>">전체보기</a>
					<a href="list.pb?pid=PDC00000033&s_category=PDC00000053" <%if( category.equals("PDC00000053") ){ %>class="on"<%}else{ %>class=""<%} %>>미니</a>
					<a href="list.pb?pid=PDC00000033&s_category=PDC00000058" <%if( category.equals("PDC00000058") ){ %>class="on"<%}else{ %>class=""<%} %>>쿠키/타르트</a>
					<a href="list.pb?pid=PDC00000033&s_category=PDC00000026" <%if( category.equals("PDC00000026") ){ %>class="on"<%}else{ %>class=""<%} %>>초코/캔디</a>
					<a href="list.pb?pid=PDC00000033&s_category=PDC00000023" <%if( category.equals("PDC00000023") ){ %>class="on"<%}else{ %>class=""<%} %>>아이스</a>
					<a href="list.pb?pid=PDC00000033&s_category=PDC00000075" <%if( category.equals("PDC00000075") ){ %>class="on"<%}else{ %>class=""<%} %>>슈</a>
					<a href="list.pb?pid=PDC00000033&s_category=PDC00000076" <%if( category.equals("PDC00000076") ){ %>class="on"<%}else{ %>class=""<%} %>>마카롱</a>
					<a href="list.pb?pid=PDC00000033&s_category=PDC00000061" <%if( category.equals("PDC00000061") ){ %>class="on"<%}else{ %>class=""<%} %>>etc(잼,소시지 등)</a>
				</div>
				<%}else if( request.getParameter("pid").equals("PDC00000034")){ %><!-- 음료 -->
				<div class="dep2" style="display:block">
					<a href="product/list.pb?pid=PDC00000034" <%if(category.equals("")){%> class="on"<% }else{%>class =""<% } %>>전체보기</a>
					<a href="product/list.pb?pid=PDC00000034&s_category=PDC00000029" <%if(category.equals("PDC00000029")){%> class="on"<% }else{%>class =""<% } %>>카페 아다지오</a>
					<a href="product/list.pb?pid=PDC00000034&s_category=PDC00000030" <%if(category.equals("PDC00000030")){%> class="on"<% }else{%>class =""<% } %>>라떼류 & 티</a>
					<a href="product/list.pb?pid=PDC00000034&s_category=PDC00000048" <%if(category.equals("PDC00000048")){%> class="on"<% }else{%>class =""<% } %>>주스 & 에이드</a>
					<a href="product/list.pb?pid=PDC00000034&s_category=PDC00000047" <%if(category.equals("PDC00000047")){%> class="on"<% }else{%>class =""<% } %>>스무디</a>
					<a href="product/list.pb?pid=PDC00000034&s_category=PDC00000046" <%if(category.equals("PDC00000046")){%> class="on"<% }else{%>class =""<% } %>>빙수</a>
					<a href="product/list.pb?pid=PDC00000034&s_category=PDC00000031" <%if(category.equals("PDC00000031")){%> class="on"<% }else{%>class =""<% } %>>완제음료</a>
									</div>
				<%}else if( request.getParameter("pid").equals("PDC00000021")){ %><!-- 캐릭터 -->
				<div class="dep2" style="display:block">
					<a href="list.pb?pid=PDC00000021" <%if(category.equals("")){ %>class="on"<%}else{ %>class=""<%} %>">전체보기</a>
					<a href="list.pb?pid=PDC00000021&s_category=PDC00000062" <%if( category.equals("PDC00000062") ){ %>class="on"<%}else{ %>class=""<%} %>>뽀로로</a>
					<a href="list.pb?pid=PDC00000021&s_category=PDC00000063" <%if( category.equals("PDC00000063") ){ %>class="on"<%}else{ %>class=""<%} %>>핑크퐁</a>
					<a href="list.pb?pid=PDC00000021&s_category=PDC00000064" <%if( category.equals("PDC00000064") ){ %>class="on"<%}else{ %>class=""<%} %>>공룡메카드</a>
					<a href="list.pb?pid=PDC00000021&s_category=PDC00000065" <%if( category.equals("PDC00000065") ){ %>class="on"<%}else{ %>class=""<%} %>>타요</a>
					<a href="list.pb?pid=PDC00000021&s_category=PDC00000066" <%if( category.equals("PDC00000066") ){ %>class="on"<%}else{ %>class=""<%} %>>카카오프렌즈</a>
					<a href="list.pb?pid=PDC00000021&s_category=PDC00000067" <%if( category.equals("PDC00000067") ){ %>class="on"<%}else{ %>class=""<%} %>>또봇</a>
					<a href="list.pb?pid=PDC00000021&s_category=PDC00000068" <%if( category.equals("PDC00000068") ){ %>class="on"<%}else{ %>class=""<%} %>>etc</a>
				</div>				
				
				<%} %>
				
		
			</center>
      </aside>

      <div class="content">
         <div class="product_gallery_content">
            <div class="gallery_img_b"><img src="data/product/<%=request.getAttribute("PPICTURE") %>" alt="" /></div>
            <div class="gallery_img_s">
               <ul>
                  
                  <li><a href="#none"><img src="data/product/<%=request.getAttribute("PPICTURE") %>" alt="" /></a></li>
               </ul>
            </div>
         </div><!--product_gallery_content-->

         <div class="product_info_content">
            <div class="icon_info">
               
               
               
               <img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
               
            </div>
            <div class="like_share">
               
               <a href="javascript:callLike('5560', true)" class="like_link"><img src="resources/images/product/icon_like_b.png" alt="" /><span>0</span></a>
               
               
               <a href="#none" class="share_link"><img src="resources/images/product/icon_share_b.png" alt="" /></a>
               <div class="share_list" style="display:block">
                  <a class="facebook" href="#none"><img src="resources/images/common/share_icon_f.png" alt="facebook" /></a>
                  <a class="urlcopy" href="#none"><img src="resources/images/common/share_icon_l.png" alt="urlcopy" /></a>
               </div>
            </div>
            <div class="text_info">
               <strong><%=request.getAttribute("PNAME") %></strong>
               <p><%=request.getAttribute("PINTRO") %>
</p>
            </div>
            
            <a href="https://www.happyconstore.com/brand/main.do?brandSeq=1474297546090059" target="_blank" onclick="ga('send', 'event', 'button', 'click', 'happymarket');" class="order">E-쿠폰 구매하러 가기</a>
            <ul class="accordion_ul">
               <li>
                  <a href="#none">알레르기 정보</a>
                  <p><%=request.getAttribute("PALLERGY") %></p>
               </li>
               <li>
                  <a href="#none">영양정보</a>
                  <p>
                     <%=request.getAttribute("PNUTRO") %>
                  </p>
               </li>
            </ul>
         </div><!--product_info_content-->

         <div class="img_content_01">
            <div class="text_title">
               <strong>#PB’S PICK</strong>
               <span></span>
            </div>
            <div class="pbs_pick_instafeed">
               <div class="img_box" id="instafeed">
                  <!--a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_02.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_03.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_02.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_03.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_02.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_03.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_02.jpg" alt="" /></a-->
               </div>
            </div><!--pbs_pick_instafeed-->
         </div><!--img_content_01-->

         <div class="img_content_02">
            
         </div><!--img_content_02-->

         <div class="btn_content">
            
            <a href="view.pb?id=5573&pid=PDC00000032" class="btn_l">토마토를 올린 햄치즈크라상</a>
            
            
            <a href="view.pb?id=5502&pid=PDC00000032" class="btn_r">디럭스 샌드위치</a>
            
         </div>
      </div><!--content-->
      <div class="btn_c"><a href="list.pb?pid=PDC00000032">목록</a></div>

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
         <a href="customer/praise.jsp">고객센터</a>
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
var _id   = '';          // 로그인사용자 아이디
var _mr   = '';           // 로그인사용자 결혼여부 ('single' , 'married' )
var _gd   = '';         // 로그인사용자 성별 ('man' , 'woman')
var _skey = '' ;        // 내부검색어

var _jn = '' ;          //  가입탈퇴 ( 'join','withdraw' )
var _jid = '' ;         // 가입시입력한 ID

var _ud1 = '' ;         // 사용자 정의변수 1 ( 1 ~ 10 정수값)
var _ud2 = '' ;         // 사용자 정의변수 2 ( 1 ~ 10 정수값)
var _ud3 = '' ;         // 사용자 정의변수 3 ( 1 ~ 10 정수값)
</script>
<!-- AceCounter END -->



</div>
<script>
function callLike(id, flag) {
   
   location.href="/sso/business.jsp";
   return;
   

   call("call_like.jsp?id=" + id + "&like=" + flag, "likeArea", "callBackLike");
}

function callBackLike() {
   location.href = location.href;
}
</script>



</body>
</html>
<script type="text/javascript" src="js/instafeed.min.js"></script> <!-- js 파일 로드 -->
<script type="text/javascript">   
/*  최대 20개 가져오기 */

/*  최대 20개 가져오기 */
var i_limit = 8;
var userFeed = new Instafeed({
   get: 'user',
   userId: 1461640255,
   sortBy: "most-recent",
   limit: i_limit,
   links: 'false',
   template: "<a href='{{link}}' target='_blank'><img src='{{image}}' alt='{{caption}}' width='260' height='260'/></a>",
   // {{link}} : 게시물 링크, {{image}} : 사진 url, {{caption}} : 게시물 텍스트
   target: "instafeed",
   accessToken: '1461640255.70e527e.5285a38c14944cd29a2ca2e2d73f928a',
   resolution  : 'standard_resolution'
});
userFeed.run();

//PB'S PICK
var ps_max = i_limit * 260;
$('#instafeed').css('width', ps_max);
$('#instafeed a').each(function(i) {
   $(this).css({
      'float': 'left',
      'list-style': 'none',
      'position': 'relative',
      'width': '260px'
   });
});

$('.img_box').on('mousemove', function(e) {
   var ps_ratio = (ps_max-$(document).innerWidth()) / $(document).innerWidth();
   var moveX = e.clientX * ps_ratio * -1;
   $('#instafeed').css('left', moveX);
});

/*
var userFeed = new Instafeed({
   get: 'user',
   userId: 1461640255,
   sortBy: "most-recent",
   limit: 4,
   links: 'false',
   template: "<a href='{{link}}' target='_blank'><img src='{{image}}' alt='{{caption}}' width='240' height='240'/></a>",
   // {{link}} : 게시물 링크, {{image}} : 사진 url, {{caption}} : 게시물 텍스트
   accessToken: '1461640255.70e527e.6978ce44b1e445a0a4cb80bd3e75036e',
//   target: "pick_slide",
   resolution  : 'standard_resolution'
});
userFeed.run();
*/
</script>