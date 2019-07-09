<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="resources/css/admin.css"/>
<title>Insert title here</title>
<script type="text/javascript">
function sub_change1(){
	vn_test = addForm.PBCLASS.selectedIndex;
	if(vn_test == 1)
		{
		addForm.PSCLASS.length = 5;
		addForm.PSCLASS.options[0].text = "간식빵";
		addForm.PSCLASS.options[0].value = "PDC00000005";
		addForm.PSCLASS.options[1].text = "식빵";
		addForm.PSCLASS.options[1].value = "PDC00000008";
		addForm.PSCLASS.options[2].text = "건강빵";
		addForm.PSCLASS.options[2].value = "PDC00000011";
		addForm.PSCLASS.options[3].text = "도넛";
		addForm.PSCLASS.options[3].value = "PDC00000007";
		addForm.PSCLASS.options[4].text = "페스츄리/파이";
		addForm.PSCLASS.options[4].value = "PDC00000009";
		}if(vn_test == 2)
			{
			addForm.PSCLASS.length = 6;
			addForm.PSCLASS.options[0].text = "생크림케이크";
			addForm.PSCLASS.options[0].value = "PDC00000016";
			addForm.PSCLASS.options[1].text = "축하 케이크";
			addForm.PSCLASS.options[1].value = "PDC00000019";
			addForm.PSCLASS.options[2].text = "조각 케이크";
			addForm.PSCLASS.options[2].value = "PDC00000018";
			addForm.PSCLASS.options[3].text = "대형 케이크";
			addForm.PSCLASS.options[3].value = "PDC00000015";
			addForm.PSCLASS.options[4].text = "선물용 케이크";
			addForm.PSCLASS.options[4].value = "PDC00000017";
			addForm.PSCLASS.options[5].text = "시즌케이크";
			addForm.PSCLASS.options[5].value = "PDC00000039";
		}if(vn_test == 3){
			addForm.PSCLASS.length = 4;
			addForm.PSCLASS.options[0].text = "롤케이크";
			addForm.PSCLASS.options[0].value = "PDC00000070";
			addForm.PSCLASS.options[1].text = "파운드/카스텔라";
			addForm.PSCLASS.options[1].value = "PDC00000071";
			addForm.PSCLASS.options[2].text = "구움과자/전통선물";
			addForm.PSCLASS.options[2].value = "PDC00000072";
			addForm.PSCLASS.options[3].text = "etc(초코/캔디 등)";
			addForm.PSCLASS.options[3].value = "PDC00000073";
		}if(vn_test == 4){
			addForm.PSCLASS.length = 4;
			addForm.PSCLASS.options[0].text = "샌드위치";
			addForm.PSCLASS.options[0].value = "PDC00000037";
			addForm.PSCLASS.options[1].text = "샐러드";
			addForm.PSCLASS.options[1].value = "PDC00000038";
			addForm.PSCLASS.options[2].text = "HOT샌드위치";
			addForm.PSCLASS.options[2].value = "PDC00000036";
			addForm.PSCLASS.options[3].text = "HMR/스프";
			addForm.PSCLASS.options[3].value = "PDC00000074";
		}if(vn_test == 5){
			addForm.PSCLASS.length = 7;
			addForm.PSCLASS.options[0].text = "미니";
			addForm.PSCLASS.options[0].value = "PDC00000053";
			addForm.PSCLASS.options[1].text = "쿠키/타르트";
			addForm.PSCLASS.options[1].value = "PDC00000058";
			addForm.PSCLASS.options[2].text = "초코/캔디";
			addForm.PSCLASS.options[2].value = "PDC00000026";
			addForm.PSCLASS.options[3].text = "아이스";
			addForm.PSCLASS.options[3].value = "PDC00000023";
			addForm.PSCLASS.options[4].text = "슈";
			addForm.PSCLASS.options[4].value = "PDC00000075";
			addForm.PSCLASS.options[5].text = "마카롱";
			addForm.PSCLASS.options[5].value = "PDC00000076";
			addForm.PSCLASS.options[6].text = "etc(잼,소시지 등)";
			addForm.PSCLASS.options[6].value = "PDC00000061";
		}if(vn_test == 6){
			addForm.PSCLASS.length = 6;
			addForm.PSCLASS.options[0].text = "카페 아다지오";
			addForm.PSCLASS.options[0].value = "PDC00000029";
			addForm.PSCLASS.options[1].text = "라떼류 & 티";
			addForm.PSCLASS.options[1].value = "PDC00000030";
			addForm.PSCLASS.options[2].text = "주스 & 에이드";
			addForm.PSCLASS.options[2].value = "PDC00000048";
			addForm.PSCLASS.options[3].text = "스무디";
			addForm.PSCLASS.options[3].value = "PDC00000047";
			addForm.PSCLASS.options[4].text = "빙수";
			addForm.PSCLASS.options[4].value = "PDC00000046";
			addForm.PSCLASS.options[5].text = "완재음료";
			addForm.PSCLASS.options[5].value = "PDC00000031";
		}if(vn_test == 7){
			addForm.PSCLASS.length = 7;
			addForm.PSCLASS.options[0].text = "뽀로로";
			addForm.PSCLASS.options[0].value = "PDC00000062";
			addForm.PSCLASS.options[1].text = "핑크퐁";
			addForm.PSCLASS.options[1].value = "PDC00000063";
			addForm.PSCLASS.options[2].text = "공룡메카드";
			addForm.PSCLASS.options[2].value = "PDC00000064";
			addForm.PSCLASS.options[3].text = "타요";
			addForm.PSCLASS.options[3].value = "PDC00000065";
			addForm.PSCLASS.options[4].text = "카카오프렌즈";
			addForm.PSCLASS.options[4].value = "PDC00000066";
			addForm.PSCLASS.options[5].text = "또봇";
			addForm.PSCLASS.options[5].value = "PDC00000067";
			addForm.PSCLASS.options[6].text = "etc";
			addForm.PSCLASS.options[6].value = "PDC00000068";
		}
}
function sub_change2(){
	var sub2=addForm.PSCLASS.options.value;
}

</script>

</head>
<body>

<form name="addForm" action="admin/productAdding.jsp"  method="post" enctype="Multipart/form-data">
<center>
	<table border="1" class ="table-style-one">
	<tr>
		<td>제품 등록 번호</td>
		<td><input type="text" name="PINDEX" value=<%=request.getParameter("lastIndex") %> readonly></td>
	</tr>
	
	<tr>
		<td>제품 이름</td>
		<td><input type="text" name="PNAME" value=" "></td>
	</tr>
	
	<tr>
		<td>제품 대분류</td>
		<td>
			<select name="PBCLASS" onchange="sub_change1()">
			<option value="">대분류</option>
				<option value="PDC0000000">빵</option>
				<option value="PDC00000006">케이크</option>
				<option value="PDC00000028">선물</option>
				<option value="PDC00000032">샌드위치</option>
				<option value="PDC00000033">디저트</option>
				<option value="PDC00000034">음료</option>
				<option value="PDC00000021">캐릭터</option>
				<option value="PDC00000035">PB Collection</option>
			</select>
			
			
		</td>
	</tr>
	
	<tr>
		<td>제품 소분류</td>
		<td>
		<select name="PSCLASS" onchange="sub_change2()">
		<option>소분류</option></select>
		
		</td>
	</tr>
	<tr>
		<td>제품 등록 사진</td>
		<td><input type="file" name="PPICTURE"></td>
	</tr>	
	<tr>
		<td>제품 소개</td>
		<td><input type="text" name="PINTRO" style="width:300px;height:200px;font-size:30px;" value=" "></td>
	</tr>
	
	<tr>
		<td>알레르기 유의사항</td>
		<td><input type="text" name="PALLERGY" style="width:300px;height:200px;font-size:30px;" value=" "></td>
	</tr>
	
	<tr>
		<td>제품 영양정보</td>
		<td><input type="text" name="PNUTRO" style="width:300px;height:200px;font-size:30px;" value=" "></td>
	</tr>	
		<input type="hidden" name="PLIKE" value=0>

	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="제품등록" class="myButton1">
		<input type="reset"  value="재입력" class="myButton1">
		<input type="button" value="제품리스트 돌아가기"  onclick="location.href='product_list.ad' " class="myButton1">
		</td>
	</tr>
	</table>
	</center>
</form>
</body>
</html>