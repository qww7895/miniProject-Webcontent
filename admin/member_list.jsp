<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="paris.member.db.*" %>
<%
	List memberlist = (List)request.getAttribute("memberlist");
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/admin.css"/>
<title>ȸ������ �ý��� �����ڸ��(ȸ�� ��� ����)</title>
</head>
<body>
<center>
<br>
<a href="main.gg" class="myButton2" >���� ������</a>&ensp;&ensp;&ensp;
<a href="manager.ad" class="myButton2">������ ������</a>&ensp;&ensp;&ensp;
<a href="product_list.ad" class="myButton2">��ǰ ����Ʈ</a>
<br><br>

<table class ="table-style-one" colspan="2" style="width:350px">
	<thead>
	<th colspan="2">ȸ�� ���</th>
		<!--  <td colspan=2>ȸ�� ���</td></tr>-->
	</thead>
	<tbody>
	<form method="post" action="MemberViewPage.ad">
	<tr>
	<td colspan="2">
	�̸� �˻�
	<input type="text" name="id" placeholder="�˻��ϰ��� �ϴ� ID�� �Է��Ͽ� �ּ���" style="width:200px">
	<input type="submit" value="ã��" class="myButton1">
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
		<button class="myButton1">����</button>
		</a>
		</td>
	</tr>
	<%} %>
	</tbody>
</table>
</center>
</body>
</html>