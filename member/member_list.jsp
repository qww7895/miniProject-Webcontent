<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="paris.member.db.*" %>
<%
	List memberlist = (List)request.getAttribute("memberlist");
%>
<html>
<head>
<title>ȸ������ �ý��� �����ڸ��(ȸ�� ��� ����)</title>
</head>
<body>
<center>
<table border=1 width=300>
	<tr align=center>
		<td colspan=2>ȸ�� ���</td>
	</tr>
	<%
	for(int i=0;i<memberlist.size();i++){ 
	MemberBean member=(MemberBean)memberlist.get(i);
	%>
	<tr align=center>
		<td>
			<a href="MemberViewAction.log?id=<%=member.getMID() %>">
				<%=member.getMID() %>
			</a>
		</td>
		<td>
		<a href="MemberDeleteAction.log?id=<%=member.getMID() %>">����</a>
		</td>
	</tr>
	<%} %>
	
	<tr align=center>
		<td colspan=2>
			<a href="./BoardList.bo">[�Խ��� �̵�]</a>
		</td>
	</tr>
</table>
</center>
</body>
</html>