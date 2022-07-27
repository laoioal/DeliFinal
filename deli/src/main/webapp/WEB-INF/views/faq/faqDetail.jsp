<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>FAQ 상세보기</title>
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/faq/faqDetail.css"/>" >
	<link rel="stylesheet" type="text/css" href="/deli/resources/js/board/boardForm.css">
	<link rel="stylesheet" type="text/css" href="/deli/resources/css/base.css">
	<link rel="stylesheet" type="text/css" href="/deli/resources/css/user.css">
	<link rel="stylesheet" type="text/css" href="/deli/resources/css/w3.css">
</head>
<body>
	<div class="w3-top">
	  	<div class="w3-row w3-padding w3-black">
			<div class="w3-col s1">
				<form method="POST" action="/deli/board/boardList.dlv" id="frm1" name="frm1">
			    	<div class="w3-button w3-block w3-black" id="total">전체</div>
			    </form>
		    </div>

		    <div class="w3-col s1">
		    	<div class="w3-button w3-block w3-black" id="hbtn"><a href="/deli/main.dlv">HOME</a></div>
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


<div id="faq11" style="margin-top:100px">
<h2 style="margin-left:60px; margin-top:40px;">내용 상세보기</h2>
<ul>번호 : ${faq.no}</ul>
<ul>아이디 : ${faq.id}</ul>
<ul>제목 : ${faq.title}</ul>
<br>
<br>
<ul id = "content">${faq.content}</ul>


<c:if test="${not empty admin}">
<div id = "buttonArea">
<button class = "adminBtn"id="reviseBtn"><a href="<c:url value='/faq/admin/board/update.dlv?no=${faq.no}&id=${admin.id}'/>">수정</a></button>
<button class = "adminBtn" id="deleteBtn"><a href="<c:url value='/faq/admin/board/delete.dlv?no=${faq.no}&id=${admin.id}'/>">삭제</a></button>
		<button class = "adminBtn" id = "backBtn1"><a href="/deli/faq/board.dlv">뒤로가기</a></button>
</c:if>
</div>
<c:if test="${empty admin}">
		<button id = "submitbtn"><a href="/deli/faq/board.dlv">뒤로가기</a></button>
</c:if>

	<script src="<c:url value="/js/faq/urlDelete.js"/>" type="text/javascript"></script>
	<script src="<c:url value="/js/map/submitbtn.js"/>" type="text/javascript"></script>
	
</body>
</html>
