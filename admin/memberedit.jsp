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
	 	location.href="memberSearch.ad";
	 </script>
	 <%} %>
	 <center>
	 <form method="post" action="editaction.ad">
		<table border="1" class="table-style-one">
		<tr>
		<td>ȸ�� �̸�</td>
		<td><input type="text" name="MNAME" value="<%=request.getAttribute("MNAME") %>"></td>
		</tr>
		<tr>
		<td>ȸ�� ID</td>
		<td><input type="text" name="MID" value="<%=request.getAttribute("MID") %>" readonly></td>
		</tr>
		<tr>
		<td>ȸ�� PW</td>
		<td><input type="text" name="MPW" value="<%=request.getAttribute("MPW") %>"></td>
		</tr>		
		<tr>
		<td>�ֹι�ȣ</td>
		<td><input type="text" name="MHNUM" value="<%=request.getAttribute("MHNUM") %>"></td>
		</tr>
		<tr>
		<td>��ȭ��ȣ</td>
		<td><input type="text" name="MTELL" value="<%=request.getAttribute("MTELL") %>"></td>
		</tr>		
		<tr>
		<td>�̸���</td>
		<td><input type="text" name="MMAIL" value="<%=request.getAttribute("MMAIL") %>"></td>
		</tr>
		<tr>
		<td>���� </td>
		<td>
		<%-- <input type="text" name="ISADMIN" value="<%=request.getAttribute("ISADMIN") %>"> --%>
		<select name="ISADMIN">
			<option value=0 <%if(Integer.parseInt(request.getAttribute("ISADMIN").toString())==0){%>selected <%} %>>�Ϲ� �����</option>
			<option value=1 <%if(Integer.parseInt(request.getAttribute("ISADMIN").toString())==1){%>selected <%} %>>������</option>			
		</select>
		
		
		</td>
		</tr>
		<tr>
			<td><input class="myButton1" type="submit" value="�����Ϸ�"></td>
			<td><a class="myButton1" href="member_list.ad">����Ʈ �̵�</a></td>
		</tr>
		</table>
	</form>
	</center>
</body>
</html>