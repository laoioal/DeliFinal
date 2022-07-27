<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/faq/faqUpdate.css"/>" >
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

<center>

	<div id = "faq11">
		<h2>수정하기</h2>
		<form action="<c:url value='/faq/admin/board/update2.dlv'/>" method="post">
			<input type="hidden" name="no" value="${faq.no}" readonly> 
			아이디 : <input type="text" name="id" id = "id" value="${faq.id}" readonly> <br>
			제 목 : <input type="text" name="title" id = "title" value="${faq.title}"><br> 
			내 용 : <input type="text" name="content" id = "content" value="${faq.content}"><br>
			<div id = "buttonArea"> 
			<input type="submit" class = "btn" value="제출">
		<button class = "btn" id = "btn2"><a href="/deli/faq/board.dlv">취소</a></button>
		</div>
		</form>
		</div>
		</center>
	<script src="<c:url value="/js/faq/urlDelete.js"/>" type="text/javascript"></script>
	

</body>
</html>
