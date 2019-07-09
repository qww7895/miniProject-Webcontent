<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="paris.member.db.*"%>
<%
	MemberBean member=(MemberBean)request.getAttribute("member");
%>

<html>
<head>
<title>회원관리 시스템 관리자모드(회원 정보 보기)</title>
</head>
<body>
<center>
<table border=1 width=300>
	<tr align=center>
		<td>아이디 : </td>
		<td><%=member.getMID() %></td>
	</tr>
	<tr align=center>
		<td>비밀번호 : </td>
		<td><%=member.getMPW() %></td>
	</tr>
	<tr align=center>
		<td>이름 : </td>
		<td><%=member.getMNAME() %></td>
	</tr>
	<tr align=center>
		<td colspan=2>
			<a href="MemberListAction.log">리스트로 돌아가기</a>
		</td>
	</tr>
</table>
</center>
</body>
</html>