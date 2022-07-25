<%-- 

/** 참여 내역 리스트
 * @author	안은비
 * @since	2022/05/27
 * @version	v.1.0
 * 
 * 			작업이력 ]
 * 				2022.05.28	-	클래스제작
 * 								담당자 : 안은비
 */
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
<link rel="stylesheet" type="text/css" href="/deli/resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/user.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/star.css">
<script type="text/javascript" src="/deli/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/deli/resources/js/deli/event.js"></script>
<style type="text/css">
	.rlist {
		cursor: pointer;
	}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="w3-top">
	  	<div class="w3-row w3-padding w3-black">
		    <div class="w3-col s2">
		    	<div class="w3-button w3-block w3-black" id="hbtn">HOME</div>
		    </div>
		    <div class="w3-col s8">
		      	<div class="w3-block w3-black w3-center ft22">Delivery Project</div>
		    </div>
<c:if test="${SID eq null}">
		    <div class="w3-col s2">
		      	<div class="w3-button w3-block w3-black libtn">LOGIN</div>
	    	</div>
</c:if>
<c:if test="${SID ne null}">
		    <div class="w3-col s2">
		      	<div class="w3-button w3-block w3-black" id="lobtn">LOGOUT</div>
	    	</div>
</c:if>
	  	</div>
	</div>
	
	<form method="POST" action="/deli/review/rvWrite.dlv" name="rfrm" id="rfrm">
		<input type="hidden" name="bno" id="bno">
	</form>
	<div class="w3-display-middle w3-border w3-padding w3-col m8">
    	<div class="w3-container mgt10 mgb20 w3-black">
      		<h3 class="w3-margin-right"><strong>🎰 이벤트를 통해 쿠폰을 획득해보세요! 🎰</strong></h3>
    	</div>
    	<div class="w3-container w3-padding-16 mgt20">
        	<div class="w3-row-padding" style="margin:0 -16px;">
          		<div class="w3-center w3-margin-bottom pb20">
	          		<form name="jpfrm">
	          			<img src="/deli/img/evt/7.png" class="jackpot" name="first">
	          			<img src="/deli/img/evt/7.png" class="jackpot" name="second">
	          			<img src="/deli/img/evt/7.png" class="jackpot" name="third">
	          		</form>
          		</div>
          		<div class="h20 ft12">
					<div class="w3-left w3-button w3-round-large w3-black w3-margin lbbtn">Back</div>
					<div class="w3-center w3-button w3-round-large w3-lime w3-margin sbtn" onclick="start()">START</div>
				</div>
        	</div>
    	</div>
  	</div>
</body>
</html>