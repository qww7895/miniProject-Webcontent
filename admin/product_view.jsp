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

	 <%@ page import="java.util.*"%>
	 <%@ page import="java.text.SimpleDateFormat" %>
	 <%@ page import="net.product.db.*" %>

<%if(request.getAttribute("PNAME")==null){ %>
	 <script>
	 	alert("찾을수 없는 제품 입니다");
	 	location.href="product_list.ad";
	 </script>
	 <%} %>



<%--       <div class="content">
         <div class="product_gallery_content">
            <div class="gallery_img_b"><img src="data/product/<%=request.getAttribute("PPICTURE") %>" alt="" /></div>
            <div>
               <ul>
                  <%
                  System.out.println("1 : "+request.getAttribute("PINDEX"));
                  System.out.println("2 : "+request.getAttribute("PBCLASS"));
                  System.out.println("3 : "+request.getAttribute("PSCLASS"));
                  System.out.println("4 : "+request.getAttribute("PINTRO"));
                  System.out.println("5 : "+request.getAttribute("PALLERGY"));
                  System.out.println("6 : "+request.getAttribute("PNUTRO"));
                  System.out.println("7 : "+request.getAttribute("PPICTURE"));
                  System.out.println("8 : "+request.getAttribute("PNAME"));
                  System.out.println("9 : "+request.getAttribute("PLIKE"));
                  %> 
               </ul>
            </div>
         </div><!--product_gallery_content-->




         <div class="product_info_content">
            <div class="text_info">
               <strong><%=request.getAttribute("PNAME") %></strong>
               <p><%=request.getAttribute("PINTRO") %>
</p>
            </div>
            <ul class="accordion_ul">
               <li>
                  <a>알레르기 정보</a>
                  <p><%=request.getAttribute("PALLERGY") %></p>
               </li>
               <li>
                  <a>영양정보</a>
                  <p>
                     <%=request.getAttribute("PNUTRO") %>
                  </p>
               </li>
            </ul>
         </div><!--product_info_content--> --%>

		<form name = "productView">
			<center>
				<table border="1" align="center"  class="table-style-one"> 
				<tr>
					<td rowspan="2"><img src="data/product/<%=request.getAttribute("PPICTURE") %>" alt="" /></td>
					<td>제품 번호</td>
					<td><%=request.getAttribute("PINDEX") %></td>
				</tr>
				<tr>
					<td>제품 이름				</td>	
					<td><%=request.getAttribute("PNAME") %>	</td>						
				</tr>	
				<tr>
					<td>분류</td>
					<td colspan="2"><%=request.getAttribute("PBCLASS")%>, <%=request.getAttribute("PSCLASS") %></td>
				</tr>	
				<tr>
					<td>제품 소개</td>
					<td colspan="2"><%=request.getAttribute("PINTRO") %></td>
				</tr>
				<tr>
					<td>제품 영양성분</td>
					<td colspan="2"><%=request.getAttribute("PNUTRO") %></td>
				</tr>
				<tr>
					<td>제품 알레르기 주의사항</td>
					<td colspan="2"><%=request.getAttribute("PALLERGY") %></td>
				</tr>
				
				</table>
			</center>
		</form>


         <div class="img_content_01">
            <div class="pbs_pick_instafeed">
               <div class="img_box" id="instafeed">
                  <!--a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_02.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_03.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_02.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_03.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_02.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_03.jpg" alt="" /></a>
                  <a href="view.jsp"><img src="../resources/images/product/product_view_style_01_img_02.jpg" alt="" /></a-->
               </div>
            </div><!--pbs_pick_instafeed-->
         </div><!--img_content_01-->


      </div><!--content-->
    <center>
      <a href="product_list.ad" class="myButton1">제품 리스트</a>
      <a href="ProductDeleteAction.ad?id=<%=request.getAttribute("PINDEX") %>" class="myButton1">제품 제거</a>
	</center>
</body>
</html>