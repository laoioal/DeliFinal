<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/deli/js/board/main.css">
<link rel="stylesheet" type="text/css" href="/deli//css/base.css">
<link rel="stylesheet" type="text/css" href="/deli/css/w3.css">
<link rel="stylesheet" type="text/css" href="/deli/css/user.css">
<script type="text/javascript" src="/deli/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/deli/js/member/boardWrite.js"></script>
<!-- 네이버 스마트에디터  -->
<!-- <head> 안에 추가 -->
<script type="text/javascript" src="/deli/resources/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>

function save(){
	oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []);  
    		//스마트 에디터 값을 텍스트컨텐츠로 전달
	var content = document.getElementById("smartEditor").value;
	alert(document.getElementById("txtContent").value); 
    		// 값을 불러올 땐 document.get으로 받아오기
	return; 
}

</script>
</head>
<body>
	<form method="POST" action="" id="pcsfrm" name="pcsfrm">
		<input type="hidden" name="nowPage" id="nowPage" value="${param.nowPage}">
		<input type="hidden" name="vw" id="vw" value="${param.vw}">
	</form>
	<div class="w3-top">
	  	<div class="w3-row w3-padding w3-black">
			<div class="w3-col l1">
				<form method="POST" action="/deli/board/boardList.dlv" id="frm1" name="frm1">
			    	<div class="w3-button w3-block w3-black" id="total">전체</div>
			    </form>
		    </div>
		    <div class="w3-col l1">
		    	<div class="w3-button w3-block w3-black" id="faq">FAQ</div>
		    </div>
		    <div class="w3-col l8">
		      	<div class="w3-block w3-black w3-center ft18">Delivery Project</div>
		    </div>
		    <div class="w3-col w3-right l1">
		      	<div class="w3-button w3-block w3-black" id="hbtn">HOME</div>
	    	</div>
	  	</div>
	</div>
	<div class="mxw800 w3-content w3-center">
		<!-- 글쓰기 본문 -->
		<div class='w3-col'>
			<h1 class="mgt80 w3-box w3-padding w3-black">Deli 게시글 작성</h1>
		</div>
		<div class="w3-col ">
		<form method="POST" action="/deli/member/boardWriteProc.dlv" id="bfrm" name="bfrm"
			class="w3-margin-top w3-margin-bottom">
				<input type="hidden" name="nowPage" id="nowPage" value="${param.nowPage}">
				<input type="hidden" name="vw" id="vw" value="${param.vw}">
				<div class="w3-col w3-margin-top w3-border">
					<div class="w3-col w3-margin-top">
						<div class=" w3-left-align w3-padding w3-center">
							<label class="w3-margin-right" style="width: 20%" >글 제목 : </label>
							<input class="w3-margin-left" name="title" id="title" type="text" style="width: 80%;">
						</div>
					</div>
						<input type="hidden" name="id" value="${SID}">
			<c:if test="${not empty PICK}">
					<div class="w3-col w3-padding w3-center">
							<input class="w3-col l2 w3-center" style="height:30px;" type="text" id="lcity" value="${CITY.larea}" disabled/>
							<input type="hidden" name="larea" id="large" value="${LAREA.code}" readonly/>
							<input class="w3-col l2 w3-center w3-margin-left" style="height:30px;" type="text" id="middle" value="${CITY.marea}" disabled/>
							<input type="hidden" name="marea"  id="middle" value="${MAREA.code}" readonly/>
							<select class="w3-col w3-right l7 w3-center" style="height:30px;" name="sarea" id="small">
								<option disabled selected>## 읍, 면, 동 선택 ##</option>
						<c:forEach var="data" items="${SAREA}" varStatus="st">		
								<option value="${data.code}" class="w3-text-blue">${data.city}</option>
						</c:forEach>		
							</select>
					</div>
			</c:if>
				<div class="w3-padding">
			<c:if test="${not empty PICK}">
						<div class="w3-col mgt10"  style="height:25px;">
							<label class="w3-col l2 w3-left">픽업 장소 : </label>
							<input class="w3-col l3"  style="border: 0px;" type="text" name="placeName" id="placeName" value="${PICK.placeName}" readonly/>
							<label class="w3-col l2">픽업 주소 : </label>
							<input class="w3-col l5" style="border: 0px;" type="text" name="parea" value="${PICK.parea}" id="parea" readonly>
						</div>
			</c:if>
					<div class="w3-col w3-margin-top w3-margin-bottom">
							<select class="w3-right w3-col l2 w3-border w3-center" style="height: 27px;"name="end" id="end">
								<option disabled selected>제한 시간(시)</option>
								<option class="w3-text-blue">1</option>
								<option class="w3-text-blue">2</option>
								<option class="w3-text-blue">3</option>
								<option class="w3-text-blue">4</option>
								<option class="w3-text-blue">5</option>
								<option class="w3-text-blue">6</option>
								<option class="w3-text-blue">7</option>
								<option class="w3-text-blue">8</option>
								<option class="w3-text-blue">9</option>
								<option class="w3-text-blue">10</option>
								<option class="w3-text-blue">11</option>
								<option class="w3-text-blue">12</option>
							</select>
			<c:if test="${not empty PICK}">
							<label class="w3-col l2">메뉴 :</label>
							<input class="w3-col l2" style="border: 0px;" type="text" class="w3-border w3-center" 
								name="category" id="menu" value="${PICK.category}" readonly/>
							<label class="w3-col l2">식당 이름 : </label>
							<input type="hidden"  class="w3-border w3-center" 
								name="rest" id="rest" value="${PICK.rest}"/>
							<input class="w3-col l2" style="border: 0px;" type="text" class="w3-border w3-center" 
								value="${PICK.rname}" disabled/>
			</c:if>	
					</div>
				</div>
					
				</div>
				<textarea name="body" id="ir1" rows="10" cols="100" style="width: 100%;"></textarea>
		</form>
			</div>
			<div class="w3-col">			
				<div class="w3-button w3-black w3-hover-grey w3-right w3-border" id="wbtn">글 등록</div>
				<div class="w3-button w3-black w3-hover-grey w3-margin-right w3-right w3-border" id="rbtn">Reset</div>
				<div class="w3-button w3-black w3-hover-grey w3-left w3-border" id="pbtn">PickUp</div>
			</div>
	</div>
</body>
<script id="smartEditor" type="text/javascript"> 
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
	    elPlaceHolder: "ir1",  //textarea ID 입력
	    sSkinURI: "/deli/resources/se2/SmartEditor2Skin.html",  //martEditor2Skin.html 경로 입력
	    fCreator: "createSEditor2",
	    htParams : { 
	    	// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
	        bUseToolbar : true, 
			// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseVerticalResizer : false, 
			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseModeChanger : false, 
			fOnBeforeUnload : function() {			
			}
	    },
	    fOnAppLoad : function() {
	    	//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
	    	oEditors.getById["ir1"].exec("PASTE_HTML", [ "" ]);		
	    },		
	    fCreator : "createSEditor2"
	});
	
</script>
</html>