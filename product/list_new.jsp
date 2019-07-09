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
				
				<li class="on"><a href="list_new.pb">신제품</a></li>
				
				<li><a href="list.pb?pid=PDC00000004">빵</a></li>
				
				<li><a href="list.pb?pid=PDC00000006">케이크</a></li>
				
				<li><a href="list.pb?pid=PDC00000028">선물</a></li>
				
				<li><a href="list.pb?pid=PDC00000032">샌드위치</a></li>
				
				<li><a href="list.pb?pid=PDC00000033">디저트</a></li>
				
				<li><a href="list.pb?pid=PDC00000034">음료</a></li>
				
				<li><a href="list.pb?pid=PDC00000021">캐릭터</a></li>
				
				<li><a href="list.pb?pid=PDC00000035">PB Collection</a></li>
				
				<li><a href="coupon_info.pb">상품권</a></li>
			</ul>
		</aside>

		<div class="rolling_style_01">
			<ul>
				
				<li>
					<a href="https://www.paris.co.kr/promotion/event_view.jsp?id=581"><img src="data/file/890772802856678adb55607d9e8cdca0.png" alt="쿨브레드" /></a>
				</li>
				
			</ul>
			<!--
			<div class="bullet_box">
				<a href="#none" class="active"><img src="resources/images/common/bg_blank.png" alt="1" /></a>
				<a href="#none"><img src="resources/images/common/bg_blank.png" alt="2" /></a>
				<a href="#none"><img src="resources/images/common/bg_blank.png" alt="3" /></a>
			</div>
			-->
		</div><!--rolling_style_01-->

		<div class="text_title_01">신제품<span>새롭게 소개하는 이 달의 새 메뉴</span></div>
		<div class="product_list_style_01">
			<ul>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>217</span>
					</div>
					<img src="data/product/eumP12731_550px.jpg" alt="끼니반란(卵) 반숙란" width="220px" height="220px" />
					<p>끼니반란(卵) 반숙란</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5690&" class="text_info">
							<strong>끼니반란(卵) 반숙란</strong>
							<p>샐러드&샌드위치와 곁들이기 좋은 간이 되어 있는 촉촉한 반숙란</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5690', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">217</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/peachyogert.jpg" alt="복숭아 요거트 케이크" width="220px" height="220px" />
					<p>복숭아 요거트 케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5689&" class="text_info">
							<strong>복숭아 요거트 케이크</strong>
							<p>촉촉한 쉬폰 속 요거트크림과 제철 백도 다이스를 듬뿍 샌드하고 라즈베리콤포트로 상큼함을 더한 시즌 한정 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5689', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eum97659.png" alt="보툰브라운(망고&파인)" width="220px" height="220px" />
					<p>보툰브라운(망고&파인)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5685&" class="text_info">
							<strong>보툰브라운(망고&파인)</strong>
							<p>열대과일 망고&파인애플 음료와 라인프렌즈가 함께하는 보툰블록! </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5685', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/peachgrafe.png" alt="피치&그레이프롤" width="220px" height="220px" />
					<p>피치&그레이프롤</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5684&" class="text_info">
							<strong>피치&그레이프롤</strong>
							<p>복숭아의 달콤하고 부드러운롤과 싱그러운 청포도의 상큼한롤 두가지 맛을 한번에 즐기는 듀엣롤케익</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5684', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/jaduroll.png" alt="자두롤" width="220px" height="220px" />
					<p>자두롤</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5683&" class="text_info">
							<strong>자두롤</strong>
							<p>신선한 여름자두의 새콤달콤한 맛과 향이 부드러운 시트와 잘 어울리는 롤케익</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5683', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/realkiwi.jpg" alt="리얼 키위요거트바" width="220px" height="220px" />
					<p>리얼 키위요거트바</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5681&" class="text_info">
							<strong>리얼 키위요거트바</strong>
							<p>상큼톡톡 키위소르베와 부드러운 요거트의 조화 진짜 키위처럼 생긴 리얼 키위요거트바</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5681', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/유자바.jpg" alt="리얼 유자요거트바" width="220px" height="220px" />
					<p>리얼 유자요거트바</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5680&" class="text_info">
							<strong>리얼 유자요거트바</strong>
							<p>시원한 유자소르베와 요거트의 상큼하고 부드러운 조화</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5680', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumP85068.jpg" alt="콩고물페스츄리" width="220px" height="220px" />
					<p>콩고물페스츄리</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5679&" class="text_info">
							<strong>콩고물페스츄리</strong>
							<p>달콤하고 고소한 콩고물크림 가득한 
시원하게 즐기면 더욱 맛있는 페스츄리</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5679', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[3]eumP211931 550px_웹용.jpg" alt="콘어니언크림치즈" width="220px" height="220px" />
					<p>콘어니언크림치즈</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5678&" class="text_info">
							<strong>콘어니언크림치즈</strong>
							<p>톡톡 터지는 옥수수와 양파 크림치즈가 조화로운 조리빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5678', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/코코넛쉬림프샐러드(뚜껑X).jpg" alt="코코넛 쉬림프 샐러드" width="220px" height="220px" />
					<p>코코넛 쉬림프 샐러드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5674&" class="text_info">
							<strong>코코넛 쉬림프 샐러드</strong>
							<p>코코넛을 묻혀 고소하게 튀겨낸 새우와 
매콤하면서 부드러운 로제칠리드레싱을 함께 즐기는 샐러드</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5674', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumP0984@550px_웹용(치즈가두번반한).jpg" alt="치즈가 두번 반한 딸기, 초코케이크" width="220px" height="220px" />
					<p>치즈가 두번 반한 딸기, 초코케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5673&" class="text_info">
							<strong>치즈가 두번 반한 딸기, 초코케이크</strong>
							<p>모두가 좋아하는 3가지 케이크를 한번에

모두가 좋아하는 3가지맛
딸기, 초코, 치즈 케이크를
한번에 즐길 수 있는 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5673', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/eum2324-550(상큼한청포도).jpg" alt="상큼한 청포도 케이크" width="220px" height="220px" />
					<p>상큼한 청포도 케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5672&" class="text_info">
							<strong>상큼한 청포도 케이크</strong>
							<p>부드러운 청록빛깔 그린스폰지에
청포도 콤포트와 쫄깃한 식감의 나타드코코를 더해 
상큼하고 시원한 청포도맛이 가득한
시즌 한정 케이크
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5672', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/eumO184789-web(상큼한옐로우썸머).jpg" alt="상큼한 옐로우 썸머 케이크" width="220px" height="220px" />
					<p>상큼한 옐로우 썸머 케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5671&" class="text_info">
							<strong>상큼한 옐로우 썸머 케이크</strong>
							<p>상큼하고 촉촉한 레몬스폰지에
고소한 생크림과 향긋한 유자 콤포트가 조화로운
여름시즌 한정 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5671', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>14</span>
					</div>
					<img src="data/product/사본 -eumP1498@550px_웹용컬러풀포레스트2호 (2).jpg" alt="컬러풀포레스트(2호)" width="220px" height="220px" />
					<p>컬러풀포레스트(2호)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5660&" class="text_info">
							<strong>컬러풀포레스트(2호)</strong>
							<p>촉촉한 화이트 시트위에 상큼한 과일이 어우러진 부드러운 생크림케이크~!</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5660', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">14</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[1]eumP1484@550px_웹용초코블라썸2호.jpg" alt="초코블라썸(2호)" width="220px" height="220px" />
					<p>초코블라썸(2호)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5659&" class="text_info">
							<strong>초코블라썸(2호)</strong>
							<p>초코시트와 상큼한 과일의 조합~!
20~30대가 좋아하는 인스타그래머블 디자인</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5659', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>17</span>
					</div>
					<img src="data/product/[6]eumP1471@550px_웹용초코블라썸1호.jpg" alt="초코블라썸(1호)" width="220px" height="220px" />
					<p>초코블라썸(1호)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5658&" class="text_info">
							<strong>초코블라썸(1호)</strong>
							<p>초코시트와 상큼한 과일의 조합~!!
20~30대가 좋아하는 인스타그래머블 디자인</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5658', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">17</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[12]썸머 초코바나나번-1.jpg" alt="썸머 초코바나나번" width="220px" height="220px" />
					<p>썸머 초코바나나번</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5649&" class="text_info">
							<strong>썸머 초코바나나번</strong>
							<p>코코아의 진한 맛이 느껴지는 초코번 속에 달콤한 바나나크림 가득</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5649', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/summer.jpg" alt="썸머 파인애플 페스츄리" width="220px" height="220px" />
					<p>썸머 파인애플 페스츄리</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5642&" class="text_info">
							<strong>썸머 파인애플 페스츄리</strong>
							<p>상큼한 파인애플 과육이 그대로 들어있는 맛도 모양도 파인애플 페스츄리</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5642', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/썸머 피치요거티.jpg" alt="썸머 피치요거티" width="220px" height="220px" />
					<p>썸머 피치요거티</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5641&" class="text_info">
							<strong>썸머 피치요거티</strong>
							<p>탐스러운 핑크빛 복숭아를 닮은 새콤달콤 복숭아 & 요거트크림의 미니식빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5641', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumP203189@-web베리리코타_L(뚜껑X).jpg" alt="베리&리코타치즈샐러드(L)" width="220px" height="220px" />
					<p>베리&리코타치즈샐러드(L)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5638&" class="text_info">
							<strong>베리&리코타치즈샐러드(L)</strong>
							<p>새콤달콤 석류&블루베리 드레싱과 함께 즐기는 리코타치즈 샐러드(L)</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5638', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumP203181@-web베리리코타_M(뚜껑X).jpg" alt="베리&리코타치즈샐러드(M)" width="220px" height="220px" />
					<p>베리&리코타치즈샐러드(M)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5637&" class="text_info">
							<strong>베리&리코타치즈샐러드(M)</strong>
							<p>새콤달콤 석류&블루베리 드레싱과 함께 즐기는 리코타치즈 샐러드 (M)</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5637', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumP204923-1-550.jpg" alt="청포도 스파클링 에이드" width="220px" height="220px" />
					<p>청포도 스파클링 에이드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5636&" class="text_info">
							<strong>청포도 스파클링 에이드</strong>
							<p>청포도 퓨레를 이탈리아産 탄산수와 혼합해 만든 음료로 상큼함과 청량함을 동시에 느낄수 있는 제품</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5636', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumP204901-1-550.jpg" alt="자두 스파클링 에이드" width="220px" height="220px" />
					<p>자두 스파클링 에이드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5635&" class="text_info">
							<strong>자두 스파클링 에이드</strong>
							<p>자두 퓨레를 이탈리아産 탄산수와 혼합해 만든 음료로 상큼함과 청량함을 동시에 느낄수 있는 제품</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5635', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>6,554</span>
					</div>
					<img src="data/product/eumP203300@.jpg" alt="핑크퐁 롤리초코" width="220px" height="220px" />
					<p>핑크퐁 롤리초코</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5633&" class="text_info">
							<strong>핑크퐁 롤리초코</strong>
							<p>귀여운 핑크퐁과 아기상어, 아빠상어가 뚜루루뚜루~♬ 노래를 부르는 듯한 귀여운 롤리초코</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5633', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">6,554</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/트리플롤합성이미지.JPG" alt="트리플롤" width="220px" height="220px" />
					<p>트리플롤</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5632&" class="text_info">
							<strong>트리플롤</strong>
							<p>3가지맛(초코, 땅콩버터, 솔티 카라멜)이 층층이 조화롭게 어우러진 부드러운 롤케익</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5632', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[2]eumE11740@-550.jpg" alt="까망베르&초코브라우니" width="220px" height="220px" />
					<p>까망베르&초코브라우니</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5629&" class="text_info">
							<strong>까망베르&초코브라우니</strong>
							<p>진한 까망베르 치즈 베이스에 부드럽고 달콤한 브라우니가 통째로 콕콕!
까초 조각케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5629', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumO202904@-web - 단호박샐러드.jpg" alt="달콤한 크랜베리 단호박 샐러드" width="220px" height="220px" />
					<p>달콤한 크랜베리 단호박 샐러드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5627&" class="text_info">
							<strong>달콤한 크랜베리 단호박 샐러드</strong>
							<p>새콤달콤 크랜베리에 큼직한 단호박을 넣어 씹히는 맛이 좋은 달콤한 샐러드 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5627', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumO202934@-감자샐러드.jpg" alt="담백한 옥수수 감자 샐러드" width="220px" height="220px" />
					<p>담백한 옥수수 감자 샐러드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5626&" class="text_info">
							<strong>담백한 옥수수 감자 샐러드</strong>
							<p>포슬포슬 감자에 톡톡 씹히는 옥수수를 넣은 담백한 샐러드 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5626', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[1]eumO202926@-web - 마요에그샐러드.jpg" alt="부드러운 마요 에그 샐러드" width="220px" height="220px" />
					<p>부드러운 마요 에그 샐러드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5625&" class="text_info">
							<strong>부드러운 마요 에그 샐러드</strong>
							<p>계란에 고소한 마요네즈가
잘 어우러진 부드러운 샐러드 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5625', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>50</span>
					</div>
					<img src="data/product/[1]eumP198356@-550.jpg" alt="그랑데 리얼가나슈" width="220px" height="220px" />
					<p>그랑데 리얼가나슈</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5624&" class="text_info">
							<strong>그랑데 리얼가나슈</strong>
							<p>진한 초코가나슈 크림 그리고 빅-사이즈 그랑데 슈의 조합 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5624', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">50</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>30</span>
					</div>
					<img src="data/product/[1]eumP198363@-550.jpg" alt="그랑데 후레쉬슈" width="220px" height="220px" />
					<p>그랑데 후레쉬슈</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5623&" class="text_info">
							<strong>그랑데 후레쉬슈</strong>
							<p>푹신푹신하 슈 안 부드러운 카스터드와 생크림이 가득찬 빅-사이즈 그랑데 후레쉬슈</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5623', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">30</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>98</span>
					</div>
					<img src="data/product/eumP0526-270x220_535250_치즈불고기도리아(완제박스).jpg" alt="치즈 불고기 도리아" width="220px" height="220px" />
					<p>치즈 불고기 도리아</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5620&" class="text_info">
							<strong>치즈 불고기 도리아</strong>
							<p>매콤한 굴소스라이스에 고소한 치즈, 불고기, 야채가 어우러진 라이스 그라탱
*집에서도 간편하게 냉동 보관하여 전자레인지로 쉽게 데워 먹을 수 있는 HMR 제품</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5620', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">98</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>110</span>
					</div>
					<img src="data/product/eumP0522-270x220_535252_치킨로제파스타(완제박스).jpg" alt="치킨 로제 파스타" width="220px" height="220px" />
					<p>치킨 로제 파스타</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5619&" class="text_info">
							<strong>치킨 로제 파스타</strong>
							<p>새콤한 토마토와 고소한 크림이 만난 로제 소스, 담백한 치킨이 어우러진 파스타
*집에서도 간편하게 냉동 보관하여 전자레인지로 쉽게 데워 먹을 수 있는 HMR 제품</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5619', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">110</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[2]PB_꽃빙수_딸기라떼_딸기_누끼_RGB_409px.jpg" alt="꽃빙수(딸기라떼)" width="220px" height="220px" />
					<p>꽃빙수(딸기라떼)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5618&" class="text_info">
							<strong>꽃빙수(딸기라떼)</strong>
							<p>2가지 얼음(딸기,우유)의 화려한 색감이 꽃 형상으로 연출되는 비주얼 빙수</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5618', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/유자파운드.JPG" alt="유자파운드케익" width="220px" height="220px" />
					<p>유자파운드케익</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5617&" class="text_info">
							<strong>유자파운드케익</strong>
							<p>겨울 햇유자의 달콤한 맛과 상큼한 향을 더한 부드러운 유자 파운드</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5617', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/초코파운드.JPG" alt="초코파운드케익" width="220px" height="220px" />
					<p>초코파운드케익</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5616&" class="text_info">
							<strong>초코파운드케익</strong>
							<p>초코의 진한 풍미와 달콤한 맛을 더한 부드러운 초코 파운드 케익</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5616', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>312</span>
					</div>
					<img src="data/product/[2]불고기포카챠(홈페이지 이미지).jpg" alt="바싹 불고기포카챠" width="220px" height="220px" />
					<p>바싹 불고기포카챠</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5615&" class="text_info">
							<strong>바싹 불고기포카챠</strong>
							<p>건강한 올리브오일을 넣어 구운 빵에
얇게 저며 더욱 부드러운 식감의 불고기와 
야채, 치즈가 듬뿍 어우러진 이탈리아 정통 포카챠</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5615', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">312</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/크롱 얼큰쿠키.JPG" alt="크롱 얼큰쿠키" width="220px" height="220px" />
					<p>크롱 얼큰쿠키</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5614&" class="text_info">
							<strong>크롱 얼큰쿠키</strong>
							<p>아메리칸 스타일의 쫀득하고 진한 초콜릿 & 호두 쿠키
※ 크롱 얼굴가면으로 변신해보아요</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5614', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/뽀로로 얼큰쿠키.JPG" alt="뽀로로 얼큰쿠키" width="220px" height="220px" />
					<p>뽀로로 얼큰쿠키</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5613&" class="text_info">
							<strong>뽀로로 얼큰쿠키</strong>
							<p>아메리칸 스타일의 쫀득하고 달콤한 오트밀 & 크랜베리 쿠키 
※ 뽀로로 얼굴가면으로 변신해보아요</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5613', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/인절미통팥파이.JPG" alt="인절미통팥파이" width="220px" height="220px" />
					<p>인절미통팥파이</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5612&" class="text_info">
							<strong>인절미통팥파이</strong>
							<p>찰진 통팥앙금과 오도독 씹히는 견과류로 속을 채우고 고소한 콩가루로 마무리한 바삭바삭한 파이</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5612', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/에디_썸네일.png" alt="에디가 구워준 뽀롱뽀롱 초코 마들렌" width="220px" height="220px" />
					<p>에디가 구워준 뽀롱뽀롱 초코 마들렌</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5610&" class="text_info">
							<strong>에디가 구워준 뽀롱뽀롱 초코 마들렌</strong>
							<p>달콤한 초콜릿 맛이 가득, 우리 아이가 좋아하는 에디가 구워준 부드럽고 촉촉한 초코 마들렌</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5610', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumP200443-550.jpg" alt="카스테라구마" width="220px" height="220px" />
					<p>카스테라구마</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5609&" class="text_info">
							<strong>카스테라구마</strong>
							<p>소복이 쌓인 카스테라 크럼에 부드러운 생크림과 달콤한 고구마무스가 조화로운 카스테라구마
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5609', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumP200457-550.jpg" alt="쫄깃한 찰떡맘모스" width="220px" height="220px" />
					<p>쫄깃한 찰떡맘모스</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5608&" class="text_info">
							<strong>쫄깃한 찰떡맘모스</strong>
							<p>고소한 소보로에 쫄깃한 찰떡, 게다가 상큼한 사과잼까지 한 번에 즐길 수 있는 든든한 맘모스 브레드
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5608', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/[1]피크닉롤.JPG" alt="피크닉롤" width="220px" height="220px" />
					<p>피크닉롤</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5607&" class="text_info">
							<strong>피크닉롤</strong>
							<p>알록달록 부드러운 케이크에 복숭아의 상큼함을 더한 꽃보다 화사한 롤케익</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5607', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/행복해부드러운치즈케이크 이미지.jpg" alt="행복해 부드러운 치즈케이크" width="220px" height="220px" />
					<p>행복해 부드러운 치즈케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5606&" class="text_info">
							<strong>행복해 부드러운 치즈케이크</strong>
							<p>촉촉한 화이트스폰지에 라이트한 수플레타입의 치즈와 부드러운 크림장식이 어우러진 치즈케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5606', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumP202142 550px_웹용.jpg" alt="토종효모 참 고소한 곡물식빵" width="220px" height="220px" />
					<p>토종효모 참 고소한 곡물식빵</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5605&" class="text_info">
							<strong>토종효모 참 고소한 곡물식빵</strong>
							<p>일곱 가지 이상의 곡물에 해바라기,호박&아마씨의 씹는 식감이 더해져
더욱 고소하고 건강한 토종효모 곡물식빵
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5605', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/바나나케이크.png" alt="바나나 속 깜짝 초코" width="220px" height="220px" />
					<p>바나나 속 깜짝 초코</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5604&" class="text_info">
							<strong>바나나 속 깜짝 초코</strong>
							<p>초코 & 바나나 스폰지에 달콤한 카라멜 크림과 바나나 크림의 부드러운 맛과 향이 조화로운 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5604', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/walnut.jpg" alt="토종효모 호두브레드" width="220px" height="220px" />
					<p>토종효모 호두브레드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5602&" class="text_info">
							<strong>토종효모 호두브레드</strong>
							<p>건강하고 몸에 좋은 호두와 특허 받은 토종효모를 넣어 발효한 호두브레드
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5602', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[4]sesame bread.jpg" alt="토종효모 참깨브레드" width="220px" height="220px" />
					<p>토종효모 참깨브레드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5601&" class="text_info">
							<strong>토종효모 참깨브레드</strong>
							<p>건강하고 몸에 좋은 참깨와 특허 받은 토종효모를 넣어 발효한 참깨브레드
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5601', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumO190390@-web.jpg" alt="앙버터 치아바타" width="220px" height="220px" />
					<p>앙버터 치아바타</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5598&" class="text_info">
							<strong>앙버터 치아바타</strong>
							<p>치아바타안에 단팥과 고소한 버터가 샌드된 간식빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5598', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/eumE196408@-550.jpg" alt="흑당 밀크 컵빙" width="220px" height="220px" />
					<p>흑당 밀크 컵빙</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5597&" class="text_info">
							<strong>흑당 밀크 컵빙</strong>
							<p>달콤한 흑당(Brown Sugar)과 우유/얼음을 블렌딩한 빙수형 음료</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5597', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/[14]누끼(제품확대).jpg" alt="통오트밀빵으로 만든 에그포테이토샌드위치" width="220px" height="220px" />
					<p>통오트밀빵으로 만든 에그포테이토샌드위치</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5595&" class="text_info">
							<strong>통오트밀빵으로 만든 에그포테이토샌드위치</strong>
							<p>건강한 통오트밀 빵에 에그포테이토, 햄, 야채가 어우러진 샌드위치</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5595', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/코코넛 초코볼 전면.jpg" alt="코코넛 초코볼" width="220px" height="220px" />
					<p>코코넛 초코볼</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5594&" class="text_info">
							<strong>코코넛 초코볼</strong>
							<p>코코넛과 초코앙금을 쫄기하게 즐기는 미니볼</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5594', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/아몬드초코볼 2 전면.jpg" alt="아몬드 초코볼" width="220px" height="220px" />
					<p>아몬드 초코볼</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5593&" class="text_info">
							<strong>아몬드 초코볼</strong>
							<p>고소한 아몬드와 달콤한 초코 앙금을 쫄깃하게 즐기는 미니볼</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5593', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>4</span>
					</div>
					<img src="data/product/[5]새우감자봉.jpg" alt="새우감자봉" width="220px" height="220px" />
					<p>새우감자봉</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5592&" class="text_info">
							<strong>새우감자봉</strong>
							<p>감자무스에 새우를 부드럽게 갈아넣어 바다내음 듬뿍, 매콤달콤소스와 함께 즐기는 바삭한 새우감자봉</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5592', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">4</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>27</span>
					</div>
					<img src="data/product/스모크드브랏(2개입)4.jpg" alt="스모크드브랏(2개입)" width="220px" height="220px" />
					<p>스모크드브랏(2개입)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5585&" class="text_info">
							<strong>스모크드브랏(2개입)</strong>
							<p>뽀드득 그릴 소시지빵에 사용되는 바로 그 제품!
참나무로 훈연해 깊은 풍미와 쫄깃한 식감이 살아있는
국내산 돼지고기로 만든 프리미엄 소시지</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5585', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">27</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>54</span>
					</div>
					<img src="data/product/[2]햄치즈샌드위치.jpg" alt="통오트밀빵으로 만든   햄치즈 샌드위치" width="220px" height="220px" />
					<p>통오트밀빵으로 만든   햄치즈 샌드위치</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5583&" class="text_info">
							<strong>통오트밀빵으로 만든   햄치즈 샌드위치</strong>
							<p>건강한 통오트밀 빵에 토마토, 치즈, 햄, 야채가 어우러진 샌드위치</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5583', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">54</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/[4]web.jpg" alt="토마토를 올린 햄치즈크라상" width="220px" height="220px" />
					<p>토마토를 올린 햄치즈크라상</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5573&" class="text_info">
							<strong>토마토를 올린 햄치즈크라상</strong>
							<p>고소한 크라상에 햄, 치즈, 신선한 야채와 토마토를 곁들인 샌드위치</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5573', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/1 (2).jpg" alt="민트머랭" width="220px" height="220px" />
					<p>민트머랭</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5572&" class="text_info">
							<strong>민트머랭</strong>
							<p>아름다운 색상에 반하고, 입에서 사르르~ 녹는 달콤함에 두번 반하는 민트 머랭</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5572', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/eumO167820-550.jpg" alt="리얼 쁘띠 블루베리 쉬폰" width="220px" height="220px" />
					<p>리얼 쁘띠 블루베리 쉬폰</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5571&" class="text_info">
							<strong>리얼 쁘띠 블루베리 쉬폰</strong>
							<p>촉촉한 블루베리쉬폰과 블루베리잼, 상큼한 블루베리요거트 크림이 어우러진
미니 블루베리 쉬폰 케이크 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5571', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/eumE189865@-550.jpg" alt="리얼 딸기듬뿍 티라미스" width="220px" height="220px" />
					<p>리얼 딸기듬뿍 티라미스</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5570&" class="text_info">
							<strong>리얼 딸기듬뿍 티라미스</strong>
							<p>화려한 레드스폰지에 마스카포네치즈크림과 딸기잼을 샌드하고 상큼한 생딸기를 듬뿍 올린 딸기 티라미스 케이크 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5570', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/[4]eumE189916@-550.jpg" alt="딸기&치즈케이크" width="220px" height="220px" />
					<p>딸기&치즈케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5564&" class="text_info">
							<strong>딸기&치즈케이크</strong>
							<p>달콤한 딸기시트와 딸기잼,
마스카포네 치즈와 필라델피아 크림치즈로
만들어진 티라미수크림이 어우러진,
체크무늬 단면이 매력적인 쇼트케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5564', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/eumO188994@550px_웹용.jpg" alt="초코 왕소라빵 플러스" width="220px" height="220px" />
					<p>초코 왕소라빵 플러스</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5561&" class="text_info">
							<strong>초코 왕소라빵 플러스</strong>
							<p>정성을 다하여 구워낸 왕 소라빵 속에 초코크림이 가득 든 간식빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5561', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/goodmornig.jpg" alt="3가지 맛 굿모닝샌드위치" width="220px" height="220px" />
					<p>3가지 맛 굿모닝샌드위치</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5560&" class="text_info">
							<strong>3가지 맛 굿모닝샌드위치</strong>
							<p>굿모닝롤빵에 고소한 햄&감자, 든든한 계란, 달콤한 단호박 세가지 맛을 동시에 즐길 수 있는 샌드위치
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5560', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/크리스피 어니언 크림치즈.jpg" alt="크리스피 어니언 크림치즈" width="220px" height="220px" />
					<p>크리스피 어니언 크림치즈</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5559&" class="text_info">
							<strong>크리스피 어니언 크림치즈</strong>
							<p>고소하고 달콤한 어니언 크림치즈가 들어있는 한 입 사이즈의 미니 페스츄리</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5559', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>35</span>
					</div>
					<img src="data/product/[1]small.jpg" alt="콰트로 치즈 범벅 타르트" width="220px" height="220px" />
					<p>콰트로 치즈 범벅 타르트</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5556&" class="text_info">
							<strong>콰트로 치즈 범벅 타르트</strong>
							<p>체다, 고다, 파마산, 까망배르 4가지 치즈의 풍미가 가득한 치즈 타르트 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5556', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">35</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/[1]꽃맛살고로케단면.jpg" alt="칠리꽃맛살고로케" width="220px" height="220px" />
					<p>칠리꽃맛살고로케</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5553&" class="text_info">
							<strong>칠리꽃맛살고로케</strong>
							<p>매콤한 칠리소스 풍미 가득 탱글탱글 꽃맛살이 바삭한 고로케 안에 한입 가득 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5553', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/eumO185267@-web.jpg" alt="단팥 소보루빵 플러스" width="220px" height="220px" />
					<p>단팥 소보루빵 플러스</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5552&" class="text_info">
							<strong>단팥 소보루빵 플러스</strong>
							<p>정성껏 구워낸 통팥 가득 단팥 소보루빵 플러스</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5552', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/바나나 컵케익.JPG" alt="바나나 컵케익" width="220px" height="220px" />
					<p>바나나 컵케익</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5550&" class="text_info">
							<strong>바나나 컵케익</strong>
							<p>은은한 바나나 풍미가 느껴지는 촉촉한 컵케익</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5550', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/스트로벨벳치즈.jpg" alt="스트로벨벳치즈케이크" width="220px" height="220px" />
					<p>스트로벨벳치즈케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5545&" class="text_info">
							<strong>스트로벨벳치즈케이크</strong>
							<p>촉촉한 레드벨벳스폰지에 풍미가득한 치즈크림과 상큼한 베리잼이 어우러진 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5545', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/아삭아삭.jpg" alt="아삭아삭양파치즈" width="220px" height="220px" />
					<p>아삭아삭양파치즈</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5544&" class="text_info">
							<strong>아삭아삭양파치즈</strong>
							<p>아삭아삭한 양파와 머스타드, 치즈가 들어 더 맛있는 조리빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5544', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/화이트치즈볼.jpg" alt="화이트 치즈볼" width="220px" height="220px" />
					<p>화이트 치즈볼</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5539&" class="text_info">
							<strong>화이트 치즈볼</strong>
							<p>화이트 크림치즈가 마지막 한 입 까지 맛있는 화이트 치즈볼</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5539', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/cefa79b2-fa96-48db-9346-10c7ac1a77a9.jpg" alt="상큼한 크림빵" width="220px" height="220px" />
					<p>상큼한 크림빵</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5538&" class="text_info">
							<strong>상큼한 크림빵</strong>
							<p>오렌지 필이 쏙쏙 박힌 빵 속
상큼한 크림이 가득 상큼한 크림빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5538', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/뽀로로 딸기 키즈케익_1.jpg" alt="뽀로로가 좋아하는 딸기 키즈케익" width="220px" height="220px" />
					<p>뽀로로가 좋아하는 딸기 키즈케익</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5537&" class="text_info">
							<strong>뽀로로가 좋아하는 딸기 키즈케익</strong>
							<p>우리 아이 간식으로 먹기좋은 부드럽고 폭신폭신한 딸기케익 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5537', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/스트로베리킹[170512].jpg" alt="스트로베리 킹 (King)" width="220px" height="220px" />
					<p>스트로베리 킹 (King)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5536&" class="text_info">
							<strong>스트로베리 킹 (King)</strong>
							<p>촉촉한 화이트스픈지에 부드러운 치즈생크림과 상큼한 딸기내용물이 어우러진 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5536', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/eum173124-web.jpg" alt="치즈듬뿍어니언" width="220px" height="220px" />
					<p>치즈듬뿍어니언</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5534&" class="text_info">
							<strong>치즈듬뿍어니언</strong>
							<p>큼지막한 빵에 양파와 치즈가 가득 들어 함께 먹기 좋은 조리빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5534', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>5</span>
					</div>
					<img src="data/product/딸기치즈달_eumO185257@-web.jpg" alt="딸기에 물든 치즈달" width="220px" height="220px" />
					<p>딸기에 물든 치즈달</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5530&" class="text_info">
							<strong>딸기에 물든 치즈달</strong>
							<p>부드럽고 달콤한 딸기크림치즈가
입 안 가득 퍼지는 딸기에 물든 치즈달</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5530', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">5</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>55</span>
					</div>
					<img src="data/product/eumE185084-550.jpg" alt="크림치즈&인절미 타르트" width="220px" height="220px" />
					<p>크림치즈&인절미 타르트</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5528&" class="text_info">
							<strong>크림치즈&인절미 타르트</strong>
							<p>진한 크림치즈 타르트 속 쫀득한 찰떡과 고소한 소보루, 콩고물의 만남! 
인절미의 고소함과 쫀득함을 담은 크림치즈&인절미 타르트 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5528', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">55</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/[1]eumP1538@550px_웹용컬러풀페스티벌6호.jpg" alt="컬러풀페스티벌(6호)" width="220px" height="220px" />
					<p>컬러풀페스티벌(6호)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5526&" class="text_info">
							<strong>컬러풀페스티벌(6호)</strong>
							<p>촉촉한 화이트스폰지에 상큼한과일이 어우러진 화이트생크림케이크
모두가 함께 먹을수있는 6호사이즈</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5526', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/컬러풀선샤인(3호).jpg" alt="컬러풀선샤인(3호)" width="220px" height="220px" />
					<p>컬러풀선샤인(3호)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5525&" class="text_info">
							<strong>컬러풀선샤인(3호)</strong>
							<p>촉촉한 화이트스폰지에 상큼한 과일이 어우러진 화이트 생크림케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5525', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/eumE12427_re 550px_웹용.jpg" alt="선샤인스트로베리(1호)" width="220px" height="220px" />
					<p>선샤인스트로베리(1호)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5521&" class="text_info">
							<strong>선샤인스트로베리(1호)</strong>
							<p>촉촉한 화이트 스폰지에 상큼한 과일이 어우러진 화이트 생크림케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5521', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>4</span>
					</div>
					<img src="data/product/[10]우주스타와 함께 렛츠댄스_1213.jpg" alt="우주스타와 함께 렛츠댄스(Let's Dance)" width="220px" height="220px" />
					<p>우주스타와 함께 렛츠댄스(Let's Dance)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5515&" class="text_info">
							<strong>우주스타와 함께 렛츠댄스(Let's Dance)</strong>
							<p>우주스타와 함께 꾸미는 스테이지 Ver.1 초코케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5515', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">4</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/[1]eumO43469-550.jpg" alt="닭갈비고로케" width="220px" height="220px" />
					<p>닭갈비고로케</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5503&" class="text_info">
							<strong>닭갈비고로케</strong>
							<p>매콤달콤한 닭갈비를 입안 가득 즐길 수 있는 고로케 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5503', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>20</span>
					</div>
					<img src="data/product/[1]핑크퐁 젤리스틱 통(1).jpg" alt="핑크퐁 젤리스틱" width="220px" height="220px" />
					<p>핑크퐁 젤리스틱</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5488&" class="text_info">
							<strong>핑크퐁 젤리스틱</strong>
							<p>상큼달콤 탱글한 젤리가 스틱 속에 쏙, 인기만점 귀여운 핑크퐁 젤리스틱(복숭아맛, 청포도맛, 파인애플맛, 리치맛)</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5488', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">20</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/콰트로치즈식빵.jpg" alt="콰트로치즈식빵" width="220px" height="220px" />
					<p>콰트로치즈식빵</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5450&" class="text_info">
							<strong>콰트로치즈식빵</strong>
							<p>매일 매일 정성으로 구워내는 4가지 치즈(고다, 체다, 스위스, 모짜렐라치즈)의 풍미 가득한 치즈식빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5450', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/[2]long.jpg" alt="롱소시지페스츄리" width="220px" height="220px" />
					<p>롱소시지페스츄리</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5444&" class="text_info">
							<strong>롱소시지페스츄리</strong>
							<p>긴~소시지에 바삭한 페스츄리가 돌돌말려 있는 간식용 제품</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5444', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/달콤한 꿀도넛-단면.jpg" alt="달콤한 꿀도넛" width="220px" height="220px" />
					<p>달콤한 꿀도넛</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5429&" class="text_info">
							<strong>달콤한 꿀도넛</strong>
							<p>쫄깃한 도넛 속에 달콤한 꿀이 들어있는 디저트로도 즐길 수 있는 도넛</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5429', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[2]ham egg.jpg" alt="통밀 햄에그 3단샌드위치" width="220px" height="220px" />
					<p>통밀 햄에그 3단샌드위치</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5425&" class="text_info">
							<strong>통밀 햄에그 3단샌드위치</strong>
							<p>건강한 통밀식빵에 햄,치즈,에그슬라이스, 신선한 야채를 두툼하게 올린 3단 샌드위치</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5425', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[1]chicken.jpg" alt="치킨클럽 3단 샌드위치" width="220px" height="220px" />
					<p>치킨클럽 3단 샌드위치</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5424&" class="text_info">
							<strong>치킨클럽 3단 샌드위치</strong>
							<p>건강 통밀식빵과 부드러운 후레쉬식빵에 치킨, 베이컨, 신선한 야채를 두툼하게 올린 3단 샌드위치</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5424', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/[24]eum1091@_550px웹용.jpg" alt="타이니소어GO! 공룡메카드" width="220px" height="220px" />
					<p>타이니소어GO! 공룡메카드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5420&" class="text_info">
							<strong>타이니소어GO! 공룡메카드</strong>
							<p>반짝반짝 뿔에서 빛이 나오는 타이니소어 트리케라와 티라노로 장식된 공룡 메카드 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5420', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/cb.JPG" alt="초코바나나롤" width="220px" height="220px" />
					<p>초코바나나롤</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5401&" class="text_info">
							<strong>초코바나나롤</strong>
							<p>진한 초코와 달콤한 카라멜, 부드러운 바나나의 맛과 향이 조화롭게 어우러진 초바롤</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5401', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/q.JPG" alt="콰트로치즈파운드" width="220px" height="220px" />
					<p>콰트로치즈파운드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5398&" class="text_info">
							<strong>콰트로치즈파운드</strong>
							<p>까망베르, 파마산, 체다, 고다 4가지 치즈로 깊고 진한 풍미의 고소함을 더한 파운드 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5398', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/[2]eumP211660@550px_웹용_쉬림프콥샐러드.jpg" alt="쉬림프콥샐러드" width="220px" height="220px" />
					<p>쉬림프콥샐러드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5396&" class="text_info">
							<strong>쉬림프콥샐러드</strong>
							<p>탱글탱글 새우, 달걀, 병아리콩, 강낭콩 등 겅강한 재료가 야채와 풍성히 어우러진 샐러드 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5396', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/시나몬롤식빵.jpg" alt="시나몬롤식빵" width="220px" height="220px" />
					<p>시나몬롤식빵</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5393&" class="text_info">
							<strong>시나몬롤식빵</strong>
							<p>입 안 가득 퍼지는 향긋하고 달콤한 시나몬과 고소한 호두가 마블링 되어있는 
시나몬롤식빵 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5393', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/마카다미아190.jpg" alt="컵스크림 카라멜&마카다미아" width="220px" height="220px" />
					<p>컵스크림 카라멜&마카다미아</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5378&" class="text_info">
							<strong>컵스크림 카라멜&마카다미아</strong>
							<p>고소한 마카다미아가 듬뿍 들어가 풍미가 가득한 컵 아이스크림</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5378', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/쿠키앤크림190.jpg" alt="컵스크림 쿠키&크림" width="220px" height="220px" />
					<p>컵스크림 쿠키&크림</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5377&" class="text_info">
							<strong>컵스크림 쿠키&크림</strong>
							<p>부드러운 바닐라 아이스크림에 바닐라 빈과 쿠키가 듬뿍 들어있는 컵 아이스크림</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5377', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/블루베리 190.jpg" alt="컵스크림 블루베리" width="220px" height="220px" />
					<p>컵스크림 블루베리</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5376&" class="text_info">
							<strong>컵스크림 블루베리</strong>
							<p>보랏빛 블루베리 과육이 들어있는 컵 아이스크림</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5376', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/딸기190.jpg" alt="컵스크림 딸기" width="220px" height="220px" />
					<p>컵스크림 딸기</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5375&" class="text_info">
							<strong>컵스크림 딸기</strong>
							<p>상큼한 딸기 과육이 듬뿍 들어있는 컵 아이스크림</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5375', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/순수벌꿀카스테라.jpg" alt="순수(秀)벌꿀카스테라" width="220px" height="220px" />
					<p>순수(秀)벌꿀카스테라</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5370&" class="text_info">
							<strong>순수(秀)벌꿀카스테라</strong>
							<p>순수(秀)한 황금빛 아카시아 벌꿀과 목초를 먹고 자란 건강한 계란으로 만든 구름같이 부드러운 카스테라</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5370', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/rainbow cake.JPG" alt="무지개 카스테라" width="220px" height="220px" />
					<p>무지개 카스테라</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5363&" class="text_info">
							<strong>무지개 카스테라</strong>
							<p>한 층 한 층 정성으로 구워 알록달록한 케이크에
우리 사과로 상큼함을 더해 맛에서 반하고 모양에서 두 번 반하는 무지개 카스테라
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5363', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/PB 꽃빙수누끼_딸기_정사각형.jpg" alt="꽃빙수(딸기망고)" width="220px" height="220px" />
					<p>꽃빙수(딸기망고)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5336&" class="text_info">
							<strong>꽃빙수(딸기망고)</strong>
							<p>2가지 과일 얼음(딸기,망고)의 화려한 색감이
꽃 형상으로 연출되는 비주얼 빙수</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5336', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumE196478-550.jpg" alt="수박 컵빙" width="220px" height="220px" />
					<p>수박 컵빙</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5335&" class="text_info">
							<strong>수박 컵빙</strong>
							<p>달콤하고 시원한 수박을 얼음과 블렌딩한 빙수형 음료</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5335', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eumE196450@-550.jpg" alt="자두 컵빙" width="220px" height="220px" />
					<p>자두 컵빙</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5334&" class="text_info">
							<strong>자두 컵빙</strong>
							<p>상큼한 자두와 얼음을 블렌딩한 빙수형 음료
(달콤하게 컵빙 엔딩!!)</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5334', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>4</span>
					</div>
					<img src="data/product/Egypt (2).jpg" alt="이집트에 간 트래블러 뽀로로" width="220px" height="220px" />
					<p>이집트에 간 트래블러 뽀로로</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5325&" class="text_info">
							<strong>이집트에 간 트래블러 뽀로로</strong>
							<p>이번엔 움직이는 무빙케이크! 뽀로로와 크롱 빛 에너지판에 핸드폰 손전등을 비추면 장식물들이 신나게 움직이는 2가지 맛 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5325', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">4</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/콩순이공룡송케이크.jpg" alt="콩순이공룡송케이크" width="220px" height="220px" />
					<p>콩순이공룡송케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5322&" class="text_info">
							<strong>콩순이공룡송케이크</strong>
							<p>콩순이 No1히트송 공룡송이 나오는 뮤직 케이크! 
콩순이 하단 버튼을 누르면 공룡송이 나오고, 섬세한 공룡 장식물까지 올려져 있는 2가지맛의 케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5322', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/노래하는아기상어와아빠상어.jpg" alt="노래하는 핑크퐁과상어가족 친구들" width="220px" height="220px" />
					<p>노래하는 핑크퐁과상어가족 친구들</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5321&" class="text_info">
							<strong>노래하는 핑크퐁과상어가족 친구들</strong>
							<p>아빠상어를 누르면 생일축하송이, 아기상어를 누르면 상어가족송이 나오는 3가지 케이크로 구성된 대형 핑크퐁 케이크
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5321', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/Fruits.jpg" alt="미니 통밀후르츠 브레드" width="220px" height="220px" />
					<p>미니 통밀후르츠 브레드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5318&" class="text_info">
							<strong>미니 통밀후르츠 브레드</strong>
							<p>크랜베리, 건포도, 설타나와 통밀을 활용해 맛있게 즐기는 세미하드 유럽빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5318', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/모바일쿠폰이미지.png" alt="144겹 파이만주" width="220px" height="220px" />
					<p>144겹 파이만주</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5317&" class="text_info">
							<strong>144겹 파이만주</strong>
							<p>진한 버터풍미의 갓 구운 바삭한 144겹 파이 속에 통통한 통팥앙금과 고소한 호두가 가득 들어있는 파이만주</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5317', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/SB.JPG" alt="딸기바나나롤" width="220px" height="220px" />
					<p>딸기바나나롤</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5301&" class="text_info">
							<strong>딸기바나나롤</strong>
							<p>상큼 딸기와 달콤 바나나의 맛과 향이 조화롭게 어우러진 딸바롤</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5301', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/eumE196416@-550.jpg" alt="하동말차 컵빙" width="220px" height="220px" />
					<p>하동말차 컵빙</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5300&" class="text_info">
							<strong>하동말차 컵빙</strong>
							<p>하동말차와 얼음을 블렌딩한 빙수형 음료
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5300', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/home_health_sum.png" alt="데일리 너츠 헬스" width="220px" height="220px" />
					<p>데일리 너츠 헬스</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5294&" class="text_info">
							<strong>데일리 너츠 헬스</strong>
							<p>뜨거운 햇살과 좋은 땅의 영양이 가득담긴 견과와 건과일(크랜베리)을 정성스럽게 담은 제품. 데일리로 즐기기 좋은 파우치 제품</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5294', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/home_relax_sum.png" alt="데일리 너츠 릴렉스" width="220px" height="220px" />
					<p>데일리 너츠 릴렉스</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5293&" class="text_info">
							<strong>데일리 너츠 릴렉스</strong>
							<p>뜨거운 햇살과 좋은 땅의 영양이 가득담긴 견과와 건과일(블루베리)을 정성스럽게 담은 제품. 데일리로 즐기기 좋은 파우치 제품</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5293', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>38</span>
					</div>
					<img src="data/product/eum183804@_저용량.jpg" alt="쿠키앤크림 마카롱" width="220px" height="220px" />
					<p>쿠키앤크림 마카롱</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5279&" class="text_info">
							<strong>쿠키앤크림 마카롱</strong>
							<p>풍미가득 필라델피아 치즈와 쿠키앤크림이 만난 달콤한 마카롱</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5279', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">38</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/[1]eumP119343@(1).jpg" alt="사파리 친구들" width="220px" height="220px" />
					<p>사파리 친구들</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5252&" class="text_info">
							<strong>사파리 친구들</strong>
							<p>귀여운 동물들을 만날 수 있는 사파리 디자인의 2단 케이크!
층별로 초코맛,  아몬드맛으로 아이부터 어른까지 모두를 만족시키는 콤비네이션 케이크입니다. </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5252', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>8</span>
					</div>
					<img src="data/product/노래하는핑크퐁피크닉-01-01.jpg" alt="노래하는 핑크퐁과 상어가족의 피크닉" width="220px" height="220px" />
					<p>노래하는 핑크퐁과 상어가족의 피크닉</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5248&" class="text_info">
							<strong>노래하는 핑크퐁과 상어가족의 피크닉</strong>
							<p>인기 캐릭터, 핑크퐁과 상어가족 시리즈의 피크닉 버전 케이크로 아기상어를 누르면 상어가족 노래가 나오는 뮤직 케이크 입니다. 누르면 인기 캐릭터 노래가 나오는 히트 케이크로 아이들과 더욱 즐거운 시간을 즐기세요~</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5248', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">8</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eum166166web.jpg" alt="포켓몬스터 젤로미롤리팝 (피카츄,파이리)" width="220px" height="220px" />
					<p>포켓몬스터 젤로미롤리팝 (피카츄,파이리)</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5112&" class="text_info">
							<strong>포켓몬스터 젤로미롤리팝 (피카츄,파이리)</strong>
							<p>포켓몬스터의 대표적 캐릭터인 피카츄와 파이리 모양을 한 어린이들이 좋아하는 젤리스틱</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5112', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/straw.JPG" alt="딸기빙수" width="220px" height="220px" />
					<p>딸기빙수</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5105&" class="text_info">
							<strong>딸기빙수</strong>
							<p>우유얼음에 딸기퓨레를 얹은, 새콤달콤 딸기 빙수</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5105', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>30</span>
					</div>
					<img src="data/product/tiramisu.JPG" alt="티라미수 타르트" width="220px" height="220px" />
					<p>티라미수 타르트</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=5020&" class="text_info">
							<strong>티라미수 타르트</strong>
							<p>진한크림치즈와  아다지오커피로만든 달콤한가나슈가 어울어진 고소한 티라미수 타르트</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('5020', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">30</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>3</span>
					</div>
					<img src="data/product/[4]3.JPG" alt="청포도 요거트 빙수" width="220px" height="220px" />
					<p>청포도 요거트 빙수</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4993&" class="text_info">
							<strong>청포도 요거트 빙수</strong>
							<p>청포도 얼음을 겹겹이 갈아 만든 빙수로, 요거트와 코코넛젤리를 토핑해 청량하고 시원한 제품
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4993', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">3</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/mking.jpg" alt="밀크킹" width="220px" height="220px" />
					<p>밀크킹</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4980&" class="text_info">
							<strong>밀크킹</strong>
							<p>유기농 설목장 우유와 고소한 치즈알갱이가 만난 영양간식</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4980', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/eumO0920-web.jpg" alt="행복해 촉촉한 딸기 케이크" width="220px" height="220px" />
					<p>행복해 촉촉한 딸기 케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4973&" class="text_info">
							<strong>행복해 촉촉한 딸기 케이크</strong>
							<p>[행복한 맛, 행복한 가격! 행복해케이크] 
촉촉한 화이트스폰지에 부드러운 생크림과 상큼한 딸기 내용물이 어우러진 생크림케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4973', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>6</span>
					</div>
					<img src="data/product/eumO0926-web - 복사본(행복해 촉촉한 블루베리 케이크).jpg" alt="행복해 촉촉한 블루베리케이크" width="220px" height="220px" />
					<p>행복해 촉촉한 블루베리케이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4968&" class="text_info">
							<strong>행복해 촉촉한 블루베리케이크</strong>
							<p>[행복한 맛, 행복한 가격]
촉촉한 블루베리스폰지에 부드러운 생크림과 블루베리 내용물이 어우러진 생크림케이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4968', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">6</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/[1]eum159327@web.jpg" alt="케이준치킨샐러드" width="220px" height="220px" />
					<p>케이준치킨샐러드</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4935&" class="text_info">
							<strong>케이준치킨샐러드</strong>
							<p>부드럽고 바삭하게 튀긴 치킨 커틀렛에 달콤한 머스터드 소스의 어울림이 좋은 샐러드 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4935', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>2</span>
					</div>
					<img src="data/product/[26]2.JPG" alt="망고 소르베 빙수" width="220px" height="220px" />
					<p>망고 소르베 빙수</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4698&" class="text_info">
							<strong>망고 소르베 빙수</strong>
							<p>망고가 얼음 속으로… 겹겹이 고운 망고소르베얼음에 망고 과육을 토핑한 빙수</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4698', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">2</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/eum62319_web1111.jpg" alt="레드빈 쉐이크" width="220px" height="220px" />
					<p>레드빈 쉐이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4582&" class="text_info">
							<strong>레드빈 쉐이크</strong>
							<p>국내산 팥으로 만들어서 더욱 달콤하고 부드러운 쉐이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4582', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>0</span>
					</div>
					<img src="data/product/초코쉐이.JPG" alt="초코쉐이크" width="220px" height="220px" />
					<p>초코쉐이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4428&" class="text_info">
							<strong>초코쉐이크</strong>
							<p>초콜렛의 진한 맛이 크리미한 우유가 쉐이킹되어 한층 더 부드러운 초코쉐이크</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4428', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">0</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						<img src="resources/images/common/product_list_icon_best.png" alt="BEST" />
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>1</span>
					</div>
					<img src="data/product/쉐이크.JPG" alt="딸기쉐이크" width="220px" height="220px" />
					<p>딸기쉐이크</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4427&" class="text_info">
							<strong>딸기쉐이크</strong>
							<p>달콤한 딸기와 크리미한 우유가 쉐이킹되어 신선한 딸기쉐이크  
</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4427', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">1</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>22</span>
					</div>
					<img src="data/product/222.PNG" alt="강원도 찰옥수수소보루크림빵" width="220px" height="220px" />
					<p>강원도 찰옥수수소보루크림빵</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=4287&" class="text_info">
							<strong>강원도 찰옥수수소보루크림빵</strong>
							<p>구수한 우리밀과 소박한 강원도 산골 찰옥수수가 만난 소보루크림빵</p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('4287', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">22</span>
						</div>
					</div>
				</li>
				
				<li style="display:none;">
					<div class="icon_info">
						
						
						
						<img src="resources/images/common/product_list_icon_new.png" alt="NEW" />
						
					</div>
					<div class="like">
						
						<img src="resources/images/common/product_list_style_01_like_icon_off.png" alt="" />
						
						
						<span>15</span>
					</div>
					<img src="data/product/en 01.JPG" alt="앙팡 마들렌" width="220px" height="220px" />
					<p>앙팡 마들렌</p>
					<div class="product_info">
						<a href="view.pb?type=new&id=2179&" class="text_info">
							<strong>앙팡 마들렌</strong>
							<p>촉촉한 벌꿀로 달콤한 맛을 더하고 우유칼슘으로 영양까지 채운 우리 아이를 위한 부드러운 핑크퐁 마들렌 </p>
						</a>
						<div class="like">
							
							<a href="javascript:callLike('2179', true)"><img src="resources/images/common/rolling_style_02_like_icon_off.png" alt="" /></a>
							
							
							<span id="likeArea">15</span>
						</div>
					</div>
				</li>
				
			</ul>
		</div><!--product_list_style_01-->
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
<script>

var num = 8;
var addNum = 8;

var total = $(".product_list_style_01 li").length;

$(document).ready(function() {
	$(".product_list_style_01 li").each(function(idx) {
		if(idx < num) {
			$(this).css("display", "block");
		}
	});
	var isBtn = false;
	$(".product_list_style_01 li").each(function(idx) {
		if($(this).css("display") == "none") isBtn = true;
	});
	if(!isBtn) $(".btn_more").css("display", "none");

//	num = num + addNum;

});


$(window).scroll(function() {
	var cnt = $(".product_list_style_01 li:visible").length;
	if (cnt > total) return;
	if ($(window).scrollTop() - ($(document).height() - $(window).height()) >= -100) {
		more();
	}
});

function more() {
	$(".product_list_style_01 li").each(function(idx) {
		if(idx < num) {
			$(this).css("display", "block");
		}
	});
	var isBtn = false;
	$(".product_list_style_01 li").each(function(idx) {
		if($(this).css("display") == "none") isBtn = true;
	});
	if(!isBtn) $(".btn_more").css("display", "none");
	num = num + addNum;
}

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