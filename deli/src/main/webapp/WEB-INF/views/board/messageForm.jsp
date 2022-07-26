<%-- 

/**
 * @author	이용현
 * @since	2022/05/29
 * @version	v.1.0
 * 
 * 			작업이력 ]
 * 				2022.05.29	-	클래스제작
 * 								담당자 : 이용현
 */
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="/deli/resources/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="/deli/resources/js/board/messageForm.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/base.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/user.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/w3.css">
<script type="text/javascript" src="/deli/resources/js/board/messageForm.js"></script>
<style type="text/css">

</style>
</head>
<body>
<c:if test="${not empty SENDTEST}">
	<input type="hidden" value="${SENDTEST}" id="sendtest">
</c:if>

	<div class="w3-top">
	  	<div class="w3-row w3-padding w3-black">
			<div class="w3-col s1">
				<form method="POST" action="/deli/board/boardList.dlv" id="frm1" name="frm1">
			    	<div class="w3-button w3-block w3-black" id="total">전체</div>
			    </form>
		    </div>
		    <div class="w3-col s1">
		    	<div class="w3-button w3-block w3-black" id="faq">FAQ</div>
		    </div>
		    <div class="w3-col s1">
		    	<div class="w3-button w3-block w3-black" id="hbtn">HOME</div>
		    </div>
		    <div class="w3-col s6">
		      	<div class="w3-block w3-black w3-center ft22">Delivery Project</div>
		    </div>
<c:if test="${empty SID}">
			<div class="w3-col s1 w3-right">
		    	<div class="w3-button w3-block w3-black" id="jbtn">JOIN</div>
		    </div>
		    <div class="w3-col s1 w3-right">
		      	<div class="w3-button w3-block w3-black" id="lbtn">LOGIN</div>
	    	</div>
</c:if>
<c:if test="${not empty SID}">
		    <div class="w3-col s1 w3-right">
		      	<div class="w3-button w3-block w3-black" id="obtn">LOGOUT</div>
	    	</div>
</c:if>
	  	</div>
	</div>

	<div class="mxw800 w3-content w3-center">
		<div class="w3-col mgt0">
			<form method="POST" action="/deli/board/boardList.dlv" id="frm" name="frm">
				<input type="hidden" id="maincity" name="city" value="${param.city}">
			
				<h1 class="mgb10 w3-border pdAll10"><strong></strong></h1>
				<hr>
				<button class="w3-col w3-button w3-left citytitle" value="서울특별시">서울</button>
				<button class="w3-col w3-button w3-left citytitle" value="경기도">경기도</button>
				<button class="w3-col w3-button w3-left citytitle" value="강원도">강원도</button>
				<button class="w3-col w3-button w3-left citytitle" value="충청남도">충청남도</button>
				<button class="w3-col w3-button w3-left citytitle" value="충청북도">충청북도</button>
				<button class="w3-col w3-button w3-left citytitle" value="경상남도">경상남도</button>
				<button class="w3-col w3-button w3-left citytitle" value="경상북도">경상북도</button>
				<button class="w3-col w3-button w3-left citytitle" value="전라남도">전라남도</button>
				<button class="w3-col w3-button w3-left citytitle" value="전라북도">전라북도</button>
				<button class="w3-col w3-button w3-left citytitle" value="제주도">제주도</button>
			</form>
			<form method="POST" action="/deli/board/boardList.dlv" id="frm1" name="frm1">
				<button class="w3-col w3-button w3-left citytitle1" id="total">전체</button>
			</form>
			<hr class="w3-col mg0 w3-card-2">
		</div>
		
		<div class="w3-col m2 w3-margin w3-border">
			<div class="w3-button w3-border-bottom" id="mymess">받은 쪽지</div>
			<div class="w3-button" id="send">쪽지 보내기</div>
		</div>
		<form method="POST" action="/deli/board/msProc.dlv" id="mesfrm" name="mesfrm">
		<div class="w3-col w3-border w3-padding m9 w3-margin-top">
<c:if test="${not empty param.mesid}">
			<div class="w3-col w3-margin-top w3-right">
				<div class="w3-col m2">받는사람</div>
				<input class="w3-col m9" name="kid" value="${param.mesid}">
			</div>
</c:if>
<c:if test="${empty param.mesid}">
			<div class="w3-col w3-margin-top w3-right">
				<div class="w3-col m2">받는사람</div>
				<input class="w3-col m9" name="kid" id="kid">
			</div>
</c:if>
			<div class="w3-col w3-margin-top w3-right">
				<div class="w3-col m2">제목</div>
				<input class="w3-col m9" name="title" id="title">
			</div>
			<div class="w3-col w3-margin-top w3-right">
				<div class="w3-col m2">내용</div>
				<textarea class="w3-col m9" rows="6" name="body" id="body"></textarea>
			</div>
			<button class="w3-col w3-button w3-right w3-margin-top w3-border" id="sendmessage">전송</button>
		</div>
		</form>
		<div id="id01" class="w3-modal">
			<div class="w3-modal-content w3-animate-top w3-card-4">
				<header class="w3-container w3-teal"> 
					<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
					<h2>메세지 전송 결과</h2>
				</header>
				<div class="w3-container">
					<p id="mesResult"></p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>