<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/admin.css"/>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	 <%@ page import="java.util.*"%>
	 <%@ page import="java.text.SimpleDateFormat" %>
	 <%@ page import="paris.member.db.*" %>
	 <%@ page import="net.product.db.*" %>
	 <%if(request.getAttribute("MNAME")==null){ %>
	 <script>
	 	alert("찾을수 없는 회원 ID입니다");
	 	location.href="member_list.ad";
	 </script>
	 <%} %>
	 <center>
		<table class="table-style-one" >
		<tr>
		<td>회원 이름</td>
		<td colspan="2"><%=request.getAttribute("MNAME") %></td>
		</tr>
		<tr>
		<td>회원 ID</td>
		<td colspan="2"><%=request.getAttribute("MID") %></td>
		</tr>
		<tr>
		<td>회원 PW</td>
		<td colspan="2"><%=request.getAttribute("MPW") %></td>
		</tr>		
		<tr>
		<td>주민번호</td>
		<td colspan="2"><%=request.getAttribute("MHNUM") %></td>
		</tr>
		<tr>
		<td>전화번호</td>
		<td colspan="2"><%=request.getAttribute("MTELL") %></td>
		</tr>		
		<tr>
		<td>이메일</td>
		<td colspan="2"><%=request.getAttribute("MMAIL") %></td>
		</tr>
		<tr>
		<td>권한</td>
		<td colspan="2">
		<%if( request.getAttribute("ISADMIN").equals(1)){ %>관리자
		<%}else{ %>일반 사용자
		<%}System.out.println(request.getAttribute("ISADMIN")); %>
		</td>
		</tr>
		<tr>
			<td><a class="myButton1" href="MemberDeleteAction.ad?id=<%=request.getAttribute("MID") %>">회원 삭제</a></td>
			<td><a class="myButton1" href="Memberedit.ad?id=<%=request.getAttribute("MID") %>">회원 수정</a></td>
			<td><a class="myButton1" href="member_list.ad">회원 리스트 이동</a></td>
		</tr>	
		</table>
	</center>
</body>
</html>