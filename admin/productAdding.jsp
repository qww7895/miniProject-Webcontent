<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
// request.getRealPath("상대경로") 를 통해 파일을 저장할 절대 경로를 구해온다.
// 운영체제 및 프로젝트가 위치할 환경에 따라 경로가 다르기 때문에 아래처럼 구해오는게 좋음
String uploadPath = request.getRealPath("/data/product");

int maxSize = 1024 * 1024 * 10; // 한번에 올릴 수 있는 파일 용량 : 10M로 제한
String name = "";
String subject = "";
String fileName1 = ""; // 중복처리된 이름
String originalName1 = ""; // 중복 처리전 실제 원본 이름
long fileSize = 0; // 파일 사이즈
String fileType = ""; // 파일 타입
int PINDEX=0;
String PBCLASS="";
String PSCLASS="";
String PINTRO="";
String PALLERY="";
String PNUTRO="";
String PPICTURE="";
String PNAME="";
int PLIKE=0;
MultipartRequest multi = null;
try{
   
    multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
										        // request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
    //name = 	  multi.getParameter("name");// form내의 input name="name" 인 녀석 value를 가져옴
    //subject = multi.getParameter("subject");// name="subject" 인 녀석 value를 가져옴
    PINDEX=Integer.parseInt(multi.getParameter("PINDEX"));
    
    PBCLASS=multi.getParameter("PBCLASS");
    if(PBCLASS==null)PBCLASS=" ";
    PSCLASS=multi.getParameter("PSCLASS");
    if(PSCLASS==null)PSCLASS=" ";
    PINTRO=multi.getParameter("PINTRO");
    if(PINTRO==null)PINTRO=" ";
    PALLERY=multi.getParameter("PALLERGY");
    if(PALLERY==null)PALLERY=" ";
    PNUTRO=multi.getParameter("PNUTRO");
    if(PNUTRO==null)PNUTRO=" ";
    PPICTURE=multi.getParameter("PPICTURE");
    if(PPICTURE==null)PPICTURE="";
    PNAME=multi.getParameter("PNAME");   
    if(PNAME==null)PNAME=" ";
    PLIKE=Integer.parseInt(multi.getParameter("PLIKE"));
    

    
    Enumeration files = multi.getFileNames(); // 전송한 전체 파일이름들을 가져옴
    while(files.hasMoreElements()){
        // form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
        String file1 = (String)files.nextElement(); // 파일 input에 지정한 이름을 가져옴
        											// 그에 해당하는 실재 파일 이름을 가져옴
        originalName1 = multi.getOriginalFileName(file1);// 파일명이 중복될 경우 중복 정책에 의해 뒤에 1,2,3 처럼 붙어 unique하게 파일명을 생성하는데
        fileName1 = multi.getFilesystemName(file1);// 이때 생성된 이름을 filesystemName이라 하여 그 이름 정보를 가져온다.(중복에 대한 처리)
        fileType = multi.getContentType(file1);// 파일 타입 정보를 가져옴
        File file = multi.getFile(file1);// input file name에 해당하는 실재 파일을 가져옴
        fileSize = file.length();// 그 파일 객체의 크기를 알아냄
    }
}catch(Exception e){
    e.printStackTrace();
}
PPICTURE=fileName1;

	System.out.println(PINDEX);
	System.out.println(PBCLASS);
	System.out.println(PSCLASS);
	System.out.println(PINTRO);
	System.out.println(PALLERY);
	System.out.println(PNUTRO);
	System.out.println(PPICTURE);
	System.out.println(PNAME);
	System.out.println(PLIKE);
	request.setAttribute("PINDEX", PINDEX);
	request.setAttribute("PBCLASS", PBCLASS);
	request.setAttribute("PSCLASS", PSCLASS);	
	request.setAttribute("PINTRO", PINTRO);	
	request.setAttribute("PALLERY", PALLERY);	
	request.setAttribute("PNUTRO", PNUTRO);	
	request.setAttribute("PPICTURE", PPICTURE);
	request.setAttribute("PNAME", PNAME);	
	request.setAttribute("PLIKE", PLIKE);
%>
<script>
	
	<%System.out.println("Adding Page");%>
/* 	location.href="./productAddAction.ad";
 */
 	function page_href(){
	 <%System.out.println("page_href");%>
/* 	document.id.action="productAddAction.ad";
 */
 //location.href="../productAddAction.ad";
	document.id.submit();
 }
 
 </script>
<body onload="page_href()">
<form name="id" method="post" action="../productAddAction.ad">
	<input type="hidden" name="PINDEX" value="<%=PINDEX %>">
	<input type="hidden" name="PBCLASS" value="<%=PBCLASS %>">
	<input type="hidden" name="PSCLASS" value="<%=PSCLASS %>">
	<input type="hidden" name="PINTRO" value="<%=PINTRO %>">
	<input type="hidden" name="PALLERY" value="<%=PALLERY %>">
	<input type="hidden" name="PNUTRO" value="<%=PNUTRO %>">
	<input type="hidden" name="PPICTURE" value="<%=PPICTURE %>">
	<input type="hidden" name="PNAME" value="<%=PNAME %>">
	<input type="hidden" name="PLIKE" value="<%=PLIKE %>">
	
	
	
	
	
</form>
</body>
</html>