
<%@ page language="java" contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>
<script>
/*********************
 * Global Variable
 *********************/
msg = "인증타입과 다른 방식을 호출하였습니다. 관리자에게 문의해주세요.";
authMethod = "ssl";


/*********************
 * ssl / idpw 인증 방식
 *********************/
function idpwLogin() {	
	var frm = document.loginform;	/* login form 수정 */
	
	if (authMethod.indexOf("idpw") == -1 && authMethod.indexOf("ssl") == -1) {
		alert(msg);
		return false;
	}
	
	if (frm.id.value == "") {
		alert("아이디를 입력해주세요.");
		frm.id.focus();
		return false;
	}
	
	if (frm.pw.value == "") {
		alert("비밀번호를 입력해주세요.");
		frm.pw.focus();
		return false;
	}
	
	if ( authMethod.indexOf("ssl") != -1 ) {
		frm.action = "https://nsso.happypointcard.com/LoginServlet?method=idpwProcessEx&ssid=22";
		frm.submit();
		return false;
		
	} else {
		frm.action = "http://nsso.happypointcard.com/LoginServlet?method=idpwProcess&ssid=22";
		encryptForm(frm);
		return false;
	}
		
	return false;
}

/*********************
 * pki 인증 방식
 *********************/
function pkiLogin() {
	var frm = document.loginform;	/* login form 수정 */
	
	if (authMethod.indexOf("pki") == -1) {
		alert(msg);
		return false;
	}
	
	if (!isignPki(frm)) {
		return false;
	}
	
	frm.action = "http://nsso.happypointcard.com/LoginServlet?method=pkiProcess&ssid=22";
	frm.submit();
	
	return false;
}

</script>


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
<meta property="og:parisimage" content="" />

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

	<div id="wrap" class="login">
	<div id="header">
	<header>
		<div class="logo"><a href="main.gg"><img src="resources/images/common/logo.gif" alt="PARIS BAGUETTE" /></a></div>
		<div class="top_link">
			
     <%if(session.getAttribute("id")==null){ %><!-- 로그인이 되지 않았을떄 -->    
         <a href="MemberLogin.log">로그인</a>
         <a href="JoinForm.log">회원가입</a>
        <%}else{ %>
        <a><%=session.getAttribute("id")%> 님</a>
         <% if((int)session.getAttribute("admin")==1){ %>
         <a href="manager.ad">관리자 페이지</a>
         <%} %>
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
			<div class="menu_title" style="display:none"><img src="./main//resources/images/common/menu_title_01.png" alt="" /></div>
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
		<a href="https://www.paris.co.kr/purchase/happyday.jsp" target="_blank"><img src="/resources/images/common/floating_banner.png" title="파바데이 아이스캔디 1+1"></a>
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
		<img src="resources/images/login/abcdef.png" alt="" style="text-align: right;"/>
		<h3>관리자 페이지</h3>
	</div><!--visual-->
	 <%@ page import="java.util.*"%>
	 <%@ page import="java.text.SimpleDateFormat" %>
	 <%@ page import="paris.member.db.*" %>
	 <%@ page import="net.product.db.*" %>
	<div id="container">
		<div class="content">
			<div class="text_title">관리자페이지 입니다.</div>
			<form name="login_form" method="post" action="productSearch.ad">
		<input type="hidden" name="issacweb_data" value="" />
			<input type="hidden" name="challenge" value="" />
			<input type="hidden" name="response" value="" />
			<div class="login_form">
				<a href=product_list.ad class="btn_login">제품관리</a><br>
			</div>
			<section class="spcFamily"></section>
			</form>
			<form name="login_form" method="post" action="memberSearch.ad">
		<input type="hidden" name="issacweb_data" value="" />
			<input type="hidden" name="challenge" value="" />
			<input type="hidden" name="response" value="" />
			<div class="login_form">
				<a href="member_list.ad" class="btn_login">회원관리</a>
			</div>
			<section class="spcFamily"></section>
			</form>			
		</div><!--content-->
	</div><!--container-->
	<div id="footer">
	<footer>
		<div class="footer_link">
			<a href="http://www.spc.co.kr" target="_blank">회사소개</a>
			<a href="../foundation/opening_merchant.jsp" target="_self">가맹점</a>
			<a href="http://happy.spc.co.kr" target="_blank">거래희망사전등록</a>
			<a href="https://www.happypointcard.com/serviceCenter/term1.spc" target="_blank">이용약관</a>
			<a href="../etc/popEmail.jsp" target="_blank">이메일무단수집거부</a>
			<a href="../etc/popPrivacy.jsp" target="_blank">개인정보처리방침</a>
			<a href="../etc/popImgInfoPolicy.jsp" target="_blank">영상정보처리기기운영관리방침</a>
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
				<p><a href="http://www.spc.co.kr/contributionAll" target="_blank"><img src="/resources/images/common/footer_logo_img_01.gif" alt="" /></a></p>
				<span><img src="/resources/images/common/footer_logo_img_02.gif" alt="" /></span>
				<span><img src="/resources/images/common/footer_logo_img_03.gif" alt="" /></span>
				<span><img src="/resources/images/common/footer_logo_img_04.gif" alt="" /></span>
				<span><img src="/resources/images/common/footer_logo_img_05.gif" alt="" /></span>
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
<script>
function goSubmit() {
	if(document.getElementById('checkbox_01').checked) SetCookie("SAVEID", document.getElementById('id').value, 3600 * 24 * 30, "/");
	else SetCookie("SAVEID", "");
	idpwLogin();
}

addEvent("onload", function() {
	if(GetCookie("SAVEID")) {
		var f = document.forms['loginform'];
		f['id'].value = GetCookie("SAVEID");
		f['pw'].focus();
	}
});

</script>
</body>
</html>
