<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/faq/faqList.css"/>" >
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




<div id="faq11"> 
<h1>배달공구 FAQ</h1>
<br>
	<!-- list에 데이터가 존재할경우 -->
	<c:if test="${not empty list}">
	<table id="tableInfo">
	<tr>
	<th class = "no">번호</th>
	<th class = "title">제목</th>
	<th class = "content">내용</th>
	<th class = "wdate">작성일</th>
	</tr>
	<tr>
	<c:forEach items="${list}" var="list" >
	<th class = "no"> ${list.no}</th>
	 <th class = "title">${list.title}</th>
	 <th class = "content"><a href="<c:url value='/faq/board/detail.dlv?no=${list.no}'/>">${list.content}</a></th>
	 <th class = wdate>${list.wdate}</th>
	</tr>
	</c:forEach>
	</table>
	<br>
	</c:if>
	
	<c:if test="${empty list}">
		데이터 없음	
	</c:if>
	
	<div id = "buttonArea">
	
	<!-- list에 데이터가 없을경우 : str(에러메세지를 띄운다) -->
 	<c:if test="${empty admin}" >
	   <a href="<c:url value='/faq/admin/board/login.dlv'/>"><button id = "btn1" >관리자계정</button></a>
	</c:if>
	
	<c:if test="${not empty admin}">
		<form action ="<c:url value='/faq/admin/board/insert.dlv'/>">
		<input type="hidden" name="admin" value="${admin}">
		<input type="submit" id = "btn" value="신규등록">
		</form>
		<a href="<c:url value='/faq/admin/board/logout.dlv'/>"><button id = "logout">로그아웃</button></a>
		
	</c:if>
	</div>
	</div>
	            <script src="<c:url value="/js/faq/faqList.js"/>" type="text/javascript"></script>
		<script src="<c:url value="/js/faq/adminLogin.js"/>" type="text/javascript"></script>
	
</body>
</html>
