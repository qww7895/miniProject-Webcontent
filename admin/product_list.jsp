<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="net.product.db.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/admin.css"/>
<title>회원관리 시스템 관리자모드(제품 목록 보기)</title>
<script type="text/javascript">
function sub_change1(){
	vn_test = frm.test.selectedIndex;
	if(vn_test == 1)
		{
		frm.test2.length = 5;
		frm.test2.options[0].text = "간식빵";
		frm.test2.options[0].value = "PDC00000005";
		frm.test2.options[1].text = "식빵";
		frm.test2.options[1].value = "PDC00000008";
		frm.test2.options[2].text = "건강빵";
		frm.test2.options[2].value = "PDC00000011";
		frm.test2.options[3].text = "도넛";
		frm.test2.options[3].value = "PDC00000007";
		frm.test2.options[4].text = "페스츄리/파이";
		frm.test2.options[4].value = "PDC00000009";
		}if(vn_test == 2)
			{
			frm.test2.length = 6;
			frm.test2.options[0].text = "생크림케이크";
			frm.test2.options[0].value = "PDC00000016";
			frm.test2.options[1].text = "축하 케이크";
			frm.test2.options[1].value = "PDC00000019";
			frm.test2.options[2].text = "조각 케이크";
			frm.test2.options[2].value = "PDC00000018";
			frm.test2.options[3].text = "대형 케이크";
			frm.test2.options[3].value = "PDC00000015";
			frm.test2.options[4].text = "선물용 케이크";
			frm.test2.options[4].value = "PDC00000017";
			frm.test2.options[5].text = "시즌케이크";
			frm.test2.options[5].value = "PDC00000039";
		}if(vn_test == 3){
			frm.test2.length = 4;
			frm.test2.options[0].text = "롤케이크";
			frm.test2.options[0].value = "PDC00000070";
			frm.test2.options[1].text = "파운드/카스텔라";
			frm.test2.options[1].value = "PDC00000071";
			frm.test2.options[2].text = "구움과자/전통선물";
			frm.test2.options[2].value = "PDC00000072";
			frm.test2.options[3].text = "etc(초코/캔디 등)";
			frm.test2.options[3].value = "PDC00000073";
		}if(vn_test == 4){
			frm.test2.length = 4;
			frm.test2.options[0].text = "샌드위치";
			frm.test2.options[0].value = "PDC00000037";
			frm.test2.options[1].text = "샐러드";
			frm.test2.options[1].value = "PDC00000038";
			frm.test2.options[2].text = "HOT샌드위치";
			frm.test2.options[2].value = "PDC00000036";
			frm.test2.options[3].text = "HMR/스프";
			frm.test2.options[3].value = "PDC00000074";
		}if(vn_test == 5){
			frm.test2.length = 7;
			frm.test2.options[0].text = "미니";
			frm.test2.options[0].value = "PDC00000053";
			frm.test2.options[1].text = "쿠키/타르트";
			frm.test2.options[1].value = "PDC00000058";
			frm.test2.options[2].text = "초코/캔디";
			frm.test2.options[2].value = "PDC00000026";
			frm.test2.options[3].text = "아이스";
			frm.test2.options[3].value = "PDC00000023";
			frm.test2.options[4].text = "슈";
			frm.test2.options[4].value = "PDC00000075";
			frm.test2.options[5].text = "마카롱";
			frm.test2.options[5].value = "PDC00000076";
			frm.test2.options[6].text = "etc(잼,소시지 등)";
			frm.test2.options[6].value = "PDC00000061";
		}if(vn_test == 6){
			frm.test2.length = 6;
			frm.test2.options[0].text = "카페 아다지오";
			frm.test2.options[0].value = "PDC00000029";
			frm.test2.options[1].text = "라떼류 & 티";
			frm.test2.options[1].value = "PDC00000030";
			frm.test2.options[2].text = "주스 & 에이드";
			frm.test2.options[2].value = "PDC00000048";
			frm.test2.options[3].text = "스무디";
			frm.test2.options[3].value = "PDC00000047";
			frm.test2.options[4].text = "빙수";
			frm.test2.options[4].value = "PDC00000046";
			frm.test2.options[5].text = "완재음료";
			frm.test2.options[5].value = "PDC00000031";
		}if(vn_test == 7){
			frm.test2.length = 7;
			frm.test2.options[0].text = "뽀로로";
			frm.test2.options[0].value = "PDC00000062";
			frm.test2.options[1].text = "핑크퐁";
			frm.test2.options[1].value = "PDC00000063";
			frm.test2.options[2].text = "공룡메카드";
			frm.test2.options[2].value = "PDC00000064";
			frm.test2.options[3].text = "타요";
			frm.test2.options[3].value = "PDC00000065";
			frm.test2.options[4].text = "카카오프렌즈";
			frm.test2.options[4].value = "PDC00000066";
			frm.test2.options[5].text = "또봇";
			frm.test2.options[5].value = "PDC00000067";
			frm.test2.options[6].text = "etc";
			frm.test2.options[6].value = "PDC00000068";
		}
}
function sub_change2(){
	var sub2=frm.test2.options.value;
}

</script>
</head>
<body>
<form name="frm" method="post" action="Productsearch.ad">
<center>
<%int lastIndex=0; %>
<%List productlist= (List)request.getAttribute("productlist");%>
<%lastIndex=productlist.size(); %>
<%ProductBean lastpr=(ProductBean)productlist.get(lastIndex-1);%>
<%lastIndex=lastpr.getPINDEX(); %>
<a href="productAdd.ad?lastIndex=<%=lastIndex+1%>" class="myButton2" >제품 추가</a>
<br><br>
<a href="main.gg" class="myButton2">메인 페이지</a>&ensp;&ensp;&ensp;
<a href="manager.ad" class="myButton2">관리자 페이지</a>&ensp;&ensp;&ensp;
<a href="member_list.ad" class="myButton2">멤버 리스트</a>
</center>
<br>
<center>
<table class ="table-style-one" border=1 width=500>
	<tr align=center>
	<thead>
		<th colspan=3>제품 목록 
		</th>
		<thead>
	</tr>
	
	<tr>
	<td align=center>제품 ID</td>
	<td>
	제품 검색
	<input type="text" name="id" placeholder="특수문자는 사용할수 없습니다."  style='width:200px'>
	<input type="submit" value="찾기" class="myButton1">
	</td><td align="center"></td> </tr>
	<%-- <%List productlist= (List)request.getAttribute("productlist");%> --%>
	
	<%for(int i=0;i<productlist.size();i++){ 
	ProductBean product=(ProductBean)productlist.get(i);%>
	
	
	<tr align=center>
		<td>
			<a href="ProductViewAction.ad?id=<%=product.getPNAME() %>" class="aButton">
				<%=product.getPINDEX() %>
			</a>
		</td>
		<td align=left><a href="ProductViewAction.ad?id=<%=product.getPNAME() %>" class="aButton">
				<%=product.getPNAME() %>
			</a>
		</td>
		<td>
		<a href="ProductDeleteAction.ad?id=<%=product.getPINDEX() %>"  class="myButton1">삭제</a>
		</td>
		
	</tr>

	<%}
	%>
	<tr align=center>
		<td colspan=3>
			<a href="manager.ad">이전화면</a>
		</td>
	</tr>
</table>
</center>
</form>
</body>
</html>