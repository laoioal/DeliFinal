<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>admin 로그인 페이지</title>
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/faq/adminLogin.css"/>" >
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

<center>



	<div id="faq11" style="margin-top:200px;margin-left:20px;">
	<h1>admin 로그인 페이지</h1>
	<form action="${pageContext.servletContext.contextPath }/faq/admin/board/loginOK.dlv" method="post">
	<div class="faqInsert">아이디 : <input type="text" name="id" id="id" placeholder="아이디 입력"><br></div>
	<div class="faqInsert">비밀번호 : <input type="password" name="pw" id="pw" placeholder="패스워드 입력"><br></div>
	<div id="buttonArea" style="margin-left:30px;margin-top:-200px;">
	<input type ="submit" id = "btn1" value="제   출">
	</form>
	
	<button id = "btn2"><a href="/deli/faq/board.dlv">돌아가기</a></button>
			</center>
	
		<!-- list에 데이터가 없을경우 : str(에러메세지를 띄운다) -->
 	<c:if test="${not empty msg}">
 	<div id = "msg" >${msg}</div>
	</c:if>
	<br>
	</div>
	</div>	
	<script src="<c:url value="/js/faq/urlDelete.js"/>" type="text/javascript"></script>
		<script src="<c:url value="/js/faq/adminLogin.js"/>" type="text/javascript"></script>
	
</body>
</html>
