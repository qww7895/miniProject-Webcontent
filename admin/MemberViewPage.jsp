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
	 	alert("ã���� ���� ȸ�� ID�Դϴ�");
	 	location.href="member_list.ad";
	 </script>
	 <%} %>
	 <center>
		<table class="table-style-one" >
		<tr>
		<td>ȸ�� �̸�</td>
		<td colspan="2"><%=request.getAttribute("MNAME") %></td>
		</tr>
		<tr>
		<td>ȸ�� ID</td>
		<td colspan="2"><%=request.getAttribute("MID") %></td>
		</tr>
		<tr>
		<td>ȸ�� PW</td>
		<td colspan="2"><%=request.getAttribute("MPW") %></td>
		</tr>		
		<tr>
		<td>�ֹι�ȣ</td>
		<td colspan="2"><%=request.getAttribute("MHNUM") %></td>
		</tr>
		<tr>
		<td>��ȭ��ȣ</td>
		<td colspan="2"><%=request.getAttribute("MTELL") %></td>
		</tr>		
		<tr>
		<td>�̸���</td>
		<td colspan="2"><%=request.getAttribute("MMAIL") %></td>
		</tr>
		<tr>
		<td>����</td>
		<td colspan="2">
		<%if( request.getAttribute("ISADMIN").equals(1)){ %>������
		<%}else{ %>�Ϲ� �����
		<%}System.out.println(request.getAttribute("ISADMIN")); %>
		</td>
		</tr>
		<tr>
			<td><a class="myButton1" href="MemberDeleteAction.ad?id=<%=request.getAttribute("MID") %>">ȸ�� ����</a></td>
			<td><a class="myButton1" href="Memberedit.ad?id=<%=request.getAttribute("MID") %>">ȸ�� ����</a></td>
			<td><a class="myButton1" href="member_list.ad">ȸ�� ����Ʈ �̵�</a></td>
		</tr>	
		</table>
	</center>
</body>
</html>