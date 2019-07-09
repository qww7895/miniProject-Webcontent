<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="paris.member.db.*" %>
<%
	List memberlist = (List)request.getAttribute("memberlist");
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/admin.css"/>
<title>회원관리 시스템 관리자모드(회원 목록 보기)</title>
</head>
<body>
<center>
<br>
<a href="main.gg" class="myButton2" >메인 페이지</a>&ensp;&ensp;&ensp;
<a href="manager.ad" class="myButton2">관리자 페이지</a>&ensp;&ensp;&ensp;
<a href="product_list.ad" class="myButton2">제품 리스트</a>
<br><br>

<table class ="table-style-one" colspan="2" style="width:350px">
	<thead>
	<th colspan="2">회원 목록</th>
		<!--  <td colspan=2>회원 목록</td></tr>-->
	</thead>
	<tbody>
	<form method="post" action="MemberViewPage.ad">
	<tr>
	<td colspan="2">
	이름 검색
	<input type="text" name="id" placeholder="검색하고자 하는 ID를 입력하여 주세요" style="width:200px">
	<input type="submit" value="찾기" class="myButton1">
	</td>
	</tr>
	</form>
	<%
	for(int i=0;i<memberlist.size();i++){ 
	MemberBean member=(MemberBean)memberlist.get(i);
	%>
	<tr align=center>
		<td style="width:150px">
			<a class="aButton" href="MemberViewPage.ad?id=<%=member.getMID() %>">
				<%=member.getMID() %>
			</a>
		</td>
		<td style="width:30px">
		<a href="MemberDeleteAction.ad?id=<%=member.getMID() %>">
		<button class="myButton1">삭제</button>
		</a>
		</td>
	</tr>
	<%} %>
	</tbody>
</table>
</center>
</body>
</html>