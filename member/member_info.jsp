<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="paris.member.db.*"%>
<%
	MemberBean member=(MemberBean)request.getAttribute("member");
%>

<html>
<head>
<title>ȸ������ �ý��� �����ڸ��(ȸ�� ���� ����)</title>
</head>
<body>
<center>
<table border=1 width=300>
	<tr align=center>
		<td>���̵� : </td>
		<td><%=member.getMID() %></td>
	</tr>
	<tr align=center>
		<td>��й�ȣ : </td>
		<td><%=member.getMPW() %></td>
	</tr>
	<tr align=center>
		<td>�̸� : </td>
		<td><%=member.getMNAME() %></td>
	</tr>
	<tr align=center>
		<td colspan=2>
			<a href="MemberListAction.log">����Ʈ�� ���ư���</a>
		</td>
	</tr>
</table>
</center>
</body>
</html>