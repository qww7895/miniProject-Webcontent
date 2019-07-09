<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/admin.css"/>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <br><br><br><br><br>
	 <%@ page import="java.util.*"%>
	 <%@ page import="java.text.SimpleDateFormat" %>
	 <%@ page import="paris.member.db.*" %>
	
	 <center>
	 	<h1>개인 정보 확인</h1><br><br>
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
			<td><a class="myButton1" href="MemberDelete2Action.log?id=<%=request.getAttribute("MID") %>">탈퇴</a></td>
			<td><a class="myButton1" href="Memberedit.log?id=<%=request.getAttribute("MID") %>">회원 수정</a></td>
			<td><a class="myButton1" href="main.gg">메인화면</a></td>
		</tr>	
		</table>
	</center>
</body>
</html>