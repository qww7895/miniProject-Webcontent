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
			<strong>PB VIDEO</strong>
		</p>
	</div><!--visual-->

	<div id="container">
		<aside>
			<ul>
				<li><a href="pb_now.mag">PB NOW</a></li>
				<li><a href="pb_focus.mag">PB FOCUS</a></li>
				<li class="on"><a href="pb_video.mag">PB VIDEO</a></li>
				<li><a href="pb_story.mag">PB STORY</a></li>
				<li><a href="pb_csv.mag">PB CSV</a></li>
			</ul>
		</aside>

		<div class="contents">
			<div class="list_style_03">
				<ul style="">
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파바레시피 #3 단짠단짠 피자연유브레드 편', '먹고 싶을 땐? 참지 말고 #파바딜리버리 꾹~♥', 'https://www.youtube.com/embed/bwOTbC3VYOU', 'T');"><img src="data/file/7a560ce9007ea00021d7fdcfb733ab92.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							파바레시피 #3 단짠단짠 피자연유브레드 편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('판타스틱1! 파바데이 1주년(60s)', '매 월 1일에 열려~ 파바데이가 벌써 1주년♥', 'https://www.youtube.com/embed/GcQCpbzmdj4', 'T');"><img src="data/file/9c5353eb98774d47a5e993bc0a16ed4e.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							판타스틱1! 파바데이 1주년(60s)<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('판타스틱1! 파바데이 1주년(30s)', '매 월 1일에 열려~ 파바데이가 벌써 1주년♥', 'https://www.youtube.com/embed/0uYwTYuMuGM', 'T');"><img src="data/file/d7112b152385c2de0b86fd12d846e15a.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							판타스틱1! 파바데이 1주년(30s)<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파바레시피 #2_순秀우유케이크로 만드는 기념케이크 홈베이킹', '가정의 달!
정성을 담은 선물이 필요하다면?
#파바딜리버리 순수우유케이크로 간편하게 완성~♥', 'https://www.youtube.com/embed/e1kpXOkqK30', 'T');"><img src="data/file/ae5a980ed2ce5469c025071f756f9936.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							파바레시피 #2_순秀우유케이크로 만드는 기념케이크 홈베이킹<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #11 수제화 '레프트 라이트' 디렉터 김지은편', '갓 구운 빵의 냄새를 그냥 지나칠 수 없는 것처럼,
누구든 쉽게 지나치지 못하는
따뜻한 쇼룸을 꾸미고 싶은 바람으로
한 발씩, 한 땀씩 그녀는 나아간다.', 'https://www.youtube.com/embed/HZ5yE_mRD1I', 'T');"><img src="data/file/970a6c38a2613fdd5bf15aa97a48831e.png"  alt="" width="380" height="240" /></a>
						<p>
							<span></span>
							빵과후인터뷰 #11 수제화 '레프트 라이트' 디렉터 김지은편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파바딜리버리#1 먹빵BOX _먹방콘테스트편', '사러가기 바쁘고 고민하기도 싫다면?
맛있는 파리바게뜨 제품이 랜덤으로 들어있는
#파바딜리버리 #먹빵BOX 로 고민 해결 :)♡', 'https://www.youtube.com/embed/N9cWsGOgMbg', 'T');"><img src="data/file/c819ed2d355a3e8e8156d9dc5c636027.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							파바딜리버리#1 먹빵BOX _먹방콘테스트편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #10 푸드스타일리스트편', '매일매일 다르게 진행되는 삶을
맛있고 멋있게 '라이프 스타일링' 하는 사람.
카페 아다지오 시그니처 한 잔의 휴식과 함께, 오늘도 그는 고민한다.', 'https://www.youtube.com/embed/7YhWML9-ZC4', 'T');"><img src="data/file/2ecd8772652e9edf8fc6693d9a82767a.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #10 푸드스타일리스트편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #9 마스터 테일러편', '디테일의 차이는 곧 실루엣이 된다.
그 미세함을 패턴에 녹여
세상 하나뿐인 '나만의 양복'을 만들어내는
마스터 테일러 신희철의 이야기.', 'https://www.youtube.com/embed/7SAiMktAKis', 'T');"><img src="data/file/a74f725bbcbacaf107b7256441ec12db.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #9 마스터 테일러편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파바레시피 #1 먹빵BOX 프렌치토스트편', '침샘어택 파바레시피 1편 대공개!
먹고 싶을 땐? 참지 말고 #파바딜리버리 꾹~♥', 'https://www.youtube.com/embed/M2DvMXR1l4', 'T');"><img src="data/file/23b6856ce96dc2193c18c2171687775d.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							파바레시피 #1 먹빵BOX 프렌치토스트편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('카페아다지오 시그니처 7-days', '이것은 커피인가 기적인가?!
카페아다지오 시그니처!', 'https://www.youtube.com/embed/uJ5mNHB2y30', 'T');"><img src="data/file/7a9b4dceb73b58e7023ad1949c8c9e78.jpg"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							카페아다지오 시그니처 7-days<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('3.1운동 100주년 전야제 행사', '재미와 감동이 빵빵 터졌던, 
3.1절 100년의 봄 전야제 행사!', 'https://www.youtube.com/embed/QQaYM0jQQQE', 'T');"><img src="data/file/921641fc9a0bcaa009aeb96442629170.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							3.1운동 100주년 전야제 행사<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('독립선언서낭독 #제빵사편', '독립, 우리는 언제나 잊지 말아야합니다
그들의 빵빵한 선언을 들어주세요.', 'https://www.youtube.com/embed/3Le_acZNfYc', 'T');"><img src="data/file/fc32d042b2a7f7f8c76f02a0f1152c07.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							독립선언서낭독 #제빵사편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('카페아다지오 시그니처', '7-days miracle
ALL NEW 카페아다지오 시그니처를 만나보세요', 'https://www.youtube.com/embed/ztpNsAMqUuY', 'T');"><img src="data/file/3aaec97a9fa05cbf96a4081454019e91.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							카페아다지오 시그니처<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('행복한 동행, 파리바게뜨', '함께 만들어가는 상생의 길,
그 길을 멈추지 않습니다.', 'https://www.youtube.com/embed/uamPMbs-fic', 'T');"><img src="data/file/d5902818dd98eb5fd4ce5abc426fa843.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							행복한 동행, 파리바게뜨<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('이탈리아 정통 포르치니 포카챠', '미안해... 무겁고 짜게 굴던 너와는 달리
건강하게 잘난 이사람과 사랑에 빠졌어♥

▼그녀의 새로운 사랑이 궁금하다면?▼ 
http://bit.ly/2TO36Ih', 'https://www.youtube.com/embed/kl1bNormFsc', 'T');"><img src="data/file/6d341141d2fd4b1c08178d769f3c6909.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							이탈리아 정통 포르치니 포카챠<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('이탈리아 정통 모짜렐라 포카챠', '미안해... 무겁고 짜게 굴던 너와는 달리
가볍고 순수한 이사람과 사랑에 빠졌어♥

그녀의 새로운 사랑이 궁금하다면?', 'https://www.youtube.com/embed/rOqifUxFYpw', 'T');"><img src="data/file/e14f4879a119984d194ce35f9e3060cb.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							이탈리아 정통 모짜렐라 포카챠<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #2 동네책방편', '오일파스텔로 일상의 예쁜 것들을 그린다.
여행지의 멋진 풍경도 있지만 눈 앞의 맛있는 음식이 주요 소재다.
그녀의 그림은 달콤함을 수집한다.', 'https://www.youtube.com/embed/0JIzJk-2aHs', 'T');"><img src="data/file/7de0ad46df1b99213043037cadc72d34.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #2 동네책방편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #8 드러머편', '시간이 지나서도 계속해서
열정 한 구석을 두드리고 싶은
드러머 김하늘의 이야기.', 'https://www.youtube.com/embed/NoHhtCYeDho', 'T');"><img src="data/file/f9e02bfbc66b267b8e501e32130c925d.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #8 드러머편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #7 플로리스트편', '사랑하는 꽃을 만지게 된 사람
꽃과 케이크에 설렘을 불어넣어
긍정의 에너지를 전달하는 플로리스트 김서현의 이야기.', 'https://www.youtube.com/embed/x3tVBalH-Lc', 'T');"><img src="data/file/629ec4b48761752d7775e14bdab7738a.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #7 플로리스트편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #6 DJ 미미편', '하루를 둘로 나눠 쓰는 사람
레코드샵을 뒤지며 디깅(Digging)하는 미미
오늘도 오늘치의 마카롱 같은 기쁨을 찾아내는 사람.', 'https://www.youtube.com/embed/F5cQAJ9zruY', 'T');"><img src="data/file/def5e76662c961b24180d0657eed93af.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #6 DJ 미미편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #5롱보더편', '세상의 번잡함을 등 뒤로 밀어버리고
앞으로 나아가는 롱보더
꿈, 사랑, 행복을 향해 오늘도 전진.', 'https://www.youtube.com/embed/AKlvB_bUA-Q', 'T');"><img src="data/file/bdeb77acf68a18e7a40c46faf3ff4eb2.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #5롱보더편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #4어쿠솔쟈편', '어쿠스틱한 기타 선율과 강렬한 음색의 조화.
크림치즈가 듬뿍 발린 바게트처럼
단단하면서 고소한 룹샨과 추일엽의 음악', 'https://www.youtube.com/embed/-ROfLY--UEs', 'T');"><img src="data/file/cea95ed74e48545c151f120e7b73cea2.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #4어쿠솔쟈편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #3채소 소믈리에편', '땅을 일구고 농사를 짓고 열매를 수확해
저마다의 역할에 충실할 수 있게 안내하는 채소 소믈리에
물에 담근 채소를 건져 만든 샐러드처럼 싱싱하고 명랑하다.', 'https://www.youtube.com/embed/zmuPilNd25k', 'T');"><img src="data/file/d1d1f30541245233d0e707abc3ff92f3.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #3채소 소믈리에편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵과후인터뷰 #1봉봉오리편', '오일파스텔로 일상의 예쁜 것들을 그린다.
여행지의 멋진 풍경도 있지만 눈 앞의 맛있는 음식이 주요 소재다.
그녀의 그림은 달콤함을 수집한다.', 'https://www.youtube.com/embed/RPEFH0as7j4', 'T');"><img src="data/file/d9046688cd79a5b6edda48a37a311ba7.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵과후인터뷰 #1봉봉오리편<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빛나는 하루, 크리스마스 라이팅&캐롤 케이크!', '이번 크리스마스 캐롤은? 다함께 불러봐요! 
파리바게뜨 라이팅캐롤케이크~♪', 'https://www.youtube.com/embed/XKcb7N5b08Y', 'T');"><img src="data/file/550811ac2b100d2e1120c15360be1a20.png"  alt="" width="380" height="240" /></a>
						<p>
							<span></span>
							빛나는 하루, 크리스마스 라이팅&캐롤 케이크!<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('매월 1일에 열려, 파바데이!', '아직도 매 월 1일 파바데이인거
모르는 사람 없게 해주세요~!', 'https://www.youtube.com/embed/-rmdOJQ5Bys', 'T');"><img src="data/file/6477e74af8af43aa5ce2ea5f18e3aaf3.png"  alt="" width="380" height="240" /></a>
						<p>
							<span></span>
							매월 1일에 열려, 파바데이!<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파바 딜리버리 라이팅캐롤케이크 EVENT', '라이팅캐롤케이크도사고 핑크퐁 귀마개, 아이클레버 헤드셋을
겟 - 차 할 수 있는 완벽한 찬스!', 'https://www.youtube.com/embed/fFnG-XY1cXo', 'T');"><img src="data/file/2c2acde5ed361a8e84a5598825b4d632.png"  alt="" width="380" height="240" /></a>
						<p>
							<span></span>
							파바 딜리버리 라이팅캐롤케이크 EVENT<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파바딜리버리 바로배달 서비스 -샌드위치편-', '신속해서 신선해~ 파바 딜리버리!', 'https://www.youtube.com/embed/2x_bQB17zqY', 'T');"><img src="data/file/f4e1eb4dd104f89422b5c30a6ab22dd8.png"  alt="" width="380" height="240" /></a>
						<p>
							<span></span>
							파바딜리버리 바로배달 서비스 -샌드위치편-<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('이탈리아 정통 모짜렐라 포카챠', '엄마 정성 그대로! 이탈리아 정통 그대로!
나를 위한 건강한 사치 #이탈리아정통모짜렐라포카챠 ', 'https://www.youtube.com/embed/VNCIJMv1838', 'T');"><img src="data/file/4a73183569763d72fc55af0c867c0270.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[TVCF]</span>
							이탈리아 정통 모짜렐라 포카챠<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파바딜리버리 바로배달 서비스 -엄마편-', '집에서도 APP으로 간편하게! 파바딜리버리 바로배달 서비스를 즐겨보세요 :)', 'https://www.youtube.com/embed/Lw67WmpRWHE', 'T');"><img src="data/file/a075781a374e8751e8b00f8c2d7ae6bb.png"  alt="" width="380" height="240" /></a>
						<p>
							<span></span>
							파바딜리버리 바로배달 서비스 -엄마편-<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파바딜리버리 바로배달 서비스 -생일편-', '집에서도 APP으로 간편하게! 파바딜리버리 바로배달 서비스를 즐겨보세요 :)', 'https://www.youtube.com/embed/oMjGlcRt9js', 'T');"><img src="data/file/47248df680d034bdd5974934240d8856.png"  alt="" width="380" height="240" /></a>
						<p>
							<span></span>
							파바딜리버리 바로배달 서비스 -생일편-<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('LA LA LA 라이팅 크리스마스', '라이팅 크리스마스

누구에게나 크리스마스의 밤은 반짝여야 하니까

반짝반짝 빛나는 라이팅 케이크를

라이팅 케이크는 파리바게뜨', 'https://www.youtube.com/embed/aDBaKekoxOU', 'T');"><img src="data/file/a87fd6edf01c8d984c06955ff80129b2.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							LA LA LA 라이팅 크리스마스<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파리바게뜨 창립 31주년', '[파리바게뜨 창립 31주년]

고객과 함께한 31년, 행복한 빵으로 보답하겠습니다.', 'https://www.youtube.com/embed/WjCvLp3tUAE', 'T');"><img src="data/file/cfcef599ba24b7e363efe47904b47d4e.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							파리바게뜨 창립 31주년<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('해피패밀리마스_30초', '이번 크리스마스는 주말입니다.

크리스마스에 가족이 모이는건 아빠의 케이크가 있기 때문이다.

크리스마스엔 집으로~ 해피패밀리마스! 파리바게뜨', '//www.youtube.com/embed/gxLY6-a6tm4', 'T');"><img src="data/file/0397b9b1474b634b2dbacef9314a9ca7.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							해피패밀리마스_30초<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('세상에 없던 우리천연효모빵_30초', '이곳에 우리빵의 길이 있다.

마침내 찾아낸 우리만의 천연효모

11년 연구 끝에 선보이는 우리천연 효모빵

대한민국의 새로운 빵의 길을 열다.

세상없던 우리천연효모빵, 파리바게뜨', '//www.youtube.com/embed/MkgNFY93jaw', 'T');"><img src="data/file/8ecf112ca6430c2da7a71b45fd9a8b1f.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							세상에 없던 우리천연효모빵_30초<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('The 맛있는 프랑스빵 Ver.2', '이런 프랑스빵은 처음일걸요?
입안가득 프랑스가 느껴지는 이맛을 꼭 보여드리고 싶었어요
프랑스 돌오븐에 구운 정통 프랑스빵
다양한 재료로 풍부한 맛 부드러운 프랑스빵
맛있다. 행복하다
파리바게뜨 The 맛있는 프랑스빵
', '//www.youtube.com/embed/PW9p2z_KEkk', 'T');"><img src="data/file/c755007e92e3cc87c2ae7fa2c3065c0c.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							The 맛있는 프랑스빵 Ver.2<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('The 맛있는 프랑스빵 30초 광고', '이런 프랑스빵은 처음일걸요?
입안가득 프랑스가 느껴지는 이맛을 꼭 보여드리고 싶었어요
프랑스 돌오븐에 구운 정통 프랑스빵
다양한 재료로 풍부한 맛 부드러운 프랑스빵
맛있다. 행복하다
파리바게뜨 The 맛있는 프랑스빵

', '//www.youtube.com/embed/Rv14FNvCcZQ?rel=0', 'T');"><img src="data/file/cdf15b1368c7a6570743f6e10fb8b73e.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							The 맛있는 프랑스빵 30초 광고<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('건강한 식빵 페스티벌 30's', '[건강한 식빵 페스티벌 30's]

휴

우유식빵엔 아삭한 고구마를

연어는 고소한 호밀식빵 위에
 
우리쌀 식빵이 봄나물을 만났어요

좋은것만 먹을래요

내일을 또 뭘 만들까?', 'https://www.youtube.com/embed/TArRvxjMbTk', 'T');"><img src="data/file/997e10f855cdd847e4e043316742c7b8.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							건강한 식빵 페스티벌 30's<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('건강한 식빵 페스티벌 15's', '[건강한 식빵 페스티벌 15's]

우유식빵엔 아삭한 고구마를

연어는 고소한 호밀식빵 위에
 
우리쌀 식빵이 봄나물을 만났어요

좋은것만 먹을래요

내일을 또 뭘 만들까?', 'https://www.youtube.com/embed/FwjSqIWCcpM', 'T');"><img src="data/file/5ace23db5b1d80483f2bb5fcda952c7d.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							건강한 식빵 페스티벌 15's<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('내 마음에 날개를 달아 -케이크-', '[내 마음에 날개를 달아 -케이크-]

아이처럼 좋아할 
당신의 얼굴이 떠오릅니다

케이크를 받을 때 행복해지는건 
케이크가 사람의 마음과 닮았기 때문일겁니다

내 마음에 날개를 달아.

파리바게뜨', '//www.youtube.com/embed/IuleBxWnQkc', 'T');"><img src="data/file/ceeea379a5dd298be679ab6cc42b69ef.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							내 마음에 날개를 달아 -케이크-<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('내 마음에 날개를 달아 -선물-', '[내 마음에 날개를 달아 -선물-]

당신의 마음을 표현하기에
세상의 언어는 얼마나 부족한가요

당신의 마음을 대신합니다.
세상에서 가장 맛있는 방법으로

내 마음에 날개를 달아.

파리바게뜨
', '//www.youtube.com/embed/METeXV50om4', 'T');"><img src="data/file/8f13ff22eecfb5d7d002626423a6014e.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							내 마음에 날개를 달아 -선물-<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('케이크에는 날개가 있다', '[케이크에는 날개가 있다]

The Cake has wings
 
A long time ago in a Cake land far, far away the legend says

Their Christmas Cake had wings to fly over to their beloved one

So This time, we put wings to our Christmas cake for spreading Joy

The Cake has wings

Snow flake pistachio

chocolate Gugelhopf

Chocolate Santa is waiting for first snow

There is always Surprise and Joy with Christmas

And no way to spend Christmas without a Cake.

The Cake has wings

Connect to PB WIFI now

Special Christmas Present from Paris Baguette 

Enjoying Happiness with Cake for everyone,

The cake put the wings to fly over everyone 

to spread the Happiness

Shanghai Paris Baguette

Paris Baguette's Christmas Cakes are spreading the happiness all around the world

Joy of selecting cake for someone, Happiness from receiving it

The Cake has wings', 'https://www.youtube.com/embed/5w9vpGakYCE', 'T');"><img src="data/file/b2170c09b0429ecd6b372e082292c018.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							케이크에는 날개가 있다<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('내 마음에 날개를 달아', '[내 마음에 날개를 달아]

Share my Heart with wings
 
Sometimes it’s hard to send thankfulness
To beloved people.
We know that you want to share love and happiness 
Christmas Cake will help sending your heart with wings

Share my Heart with wings

Share my Heart with wings

Share Thankfulness 

Q. What was your story?
Kang In-Hwa / University Student

I wanted to surprise my roommate.
I’s our last year in the University. So, I want special memory with her
 
Q. To my friend.
Kim Na-Jung / Roommate
I thank my friend that she sent our story for the event.
Of all the histories from behind and all, we had ups and downs between us. 
I wish we will keep going together as best friend.
 
 Share my Heart with wings to my friend…..

Share Love
 
Q. What was your story?
Kim Min-Jung / Mom
It’s The Youngest girl’s Birthday 
Just applied this event with little luck.
 
Happy Birth day to You~ 
Happy Birth day to You~

Q. What would be the best part of this event to you?

I think I would cherish more of this memory than my child.
I’ve been very busy that I couldn’t take my children to amusement park for couple of years
Taking them to see the great events and attractions
Spending great time with Auntie and Relatives 

 Share my Heart with wings to my family…..

Share Heart 
Jang Kyung-Hee / Social worker
Always make an eye contact to read them…
What would these Children would really want ….

These handicapped Children couldn’t attend outside activities or performances 
Q. What was your story?

They Just Love Pororo
Then It just struck me with our children to start e-mail our story
 
Just seeing them having fun,
I shed tears of happiness 
 
It just makes me very happy when I see them smile
 
These kids’ Smile makes people happy

Share my Heart with wings to my beloved…..', '//www.youtube.com/embed/1hBiREkzeqQ', 'T');"><img src="data/file/90739a32c6c5d375a09a9e102973d599.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							내 마음에 날개를 달아<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('빵에서 설탕을 빼면 맛이 없다.', '[빵에서 설탕을 빼면 맛이 없다.]

빵에서 설탕으 빼면 맛이 없다
빵에 대한 고정관념
그것을 깨기 위해 우리는 빵을 만든다
고집이 만든 맛있는 무설탕 식빵
아무도 가지 않은 길
외로워도 옳은 길
68년 상미당 외길정신
빵의 길을 만듭니다.
파리바게뜨', '//www.youtube.com/embed/1vHvqR0j47w', 'T');"><img src="data/file/315a981c7b6927411b9a2d4efef137d3.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							빵에서 설탕을 빼면 맛이 없다.<br/>
							
						</p>
					</li>
					
					<li style="display:none;height:374px;">
						<a href="javascript:void openDetailPop('파리바게뜨 모델이 된 사과 농부 이야기', '[파리바게뜨 모델이 된 사과 농부 이야기]
경북 영천의 미니사과를 재배하시는 최병혁님의 사과 농부 이야기 영상 입니다.
', '//www.youtube.com/embed/ZdkIlBZLI3M', 'T');"><img src="data/file/91a3dcdb5249eb44289026c78f7a73fe.png"  alt="" width="380" height="240" /></a>
						<p>
							<span>[Online]</span>
							파리바게뜨 모델이 된 사과 농부 이야기<br/>
							
						</p>
					</li>
										
				</ul>
				<div class="btn_c"><a href="javascript:more();">더보기</a></div>
			</div><!--list_style_03-->
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




	<script>
	var num = 6;
	var addNum = 6;
	var height = 760;
	$(document).ready(function() {
		$(".list_style_03 li").each(function(idx) {			
			if(idx < num) {
				$(this).css("display", "block");
			}			
		});
		var isBtn = false;
		$(".list_style_03 li").each(function(idx) {
			if($(this).css("display") == "none") isBtn = true;
		});
		if(!isBtn) $(".btn_c").css("display", "none");

		num = num + addNum;
		setContentHeight();		
	});
	
	function more() {
		$(".list_style_03 li").each(function(idx) {			
			if(idx < num) {
				$(this).css("display", "block");										
			}			
		});
		var isBtn = false;
		$(".list_style_03 li").each(function(idx) {
			if($(this).css("display") == "none") isBtn = true;
		});
		if(!isBtn) $(".btn_c").css("display", "none");
		num = num + addNum;
		setContentHeight();
	}
	function setContentHeight() {
		height = Math.ceil($(".list_style_03 ul li:visible").length / 3) * 374
		$(".list_style_03 ul").css("height", height + "px");
		//height += 378;
	}
	</script>
</div>

<div class="popup popup_pb_video" style="display:none;">
	<div class="popup_content">
		<div class="video_box">
			<iframe width="100%" height="100%" src="" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
		</div>
		<div class="text_info">
			<strong></strong>
			<p></p>
		</div>
	</div><!--popup_content-->
	<div class="btn_close"><a href="#none"><img src="resources/images/common/btn_popup_close.gif" alt="닫기" /></a></div>
</div><!--popup-->

</html>