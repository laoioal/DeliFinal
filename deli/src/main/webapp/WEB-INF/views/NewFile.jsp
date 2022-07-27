<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delivery Project Main</title>
<script type="text/javascript" src="/deli/resources/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="/deli/resources/css/NewFile.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/js/board/newFile.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/base.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/user.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/w3.css">
<script type="text/javascript" src="/deli/resources/js/member/myInfo.js"></script>
<script type="text/javascript" src="/deli/resources/js/board/newFile.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
	body {
		background-image: url("/deli/img/main/test.png");
		background-size: 640px auto;
		background-repeat: repeat;
	}
</style>
</head>
<body>
	<div class="w3-top num5">
	  	<div class="w3-col w3-padding w3-black num5">
			<div class="w3-col s1">
				<form method="POST" action="/deli/board/boardList.dlv" id="frm1" name="frm1">
			    	<div class="w3-button w3-block w3-black" id="total">전체</div>
			    </form>
		    </div>
		    <div class="w3-col s1">
		    	<div class="w3-button w3-block w3-black" id="faq">FAQ</div>
		    </div>
		    <div class="w3-col s8">
		      	<div class="w3-block w3-black w3-center ft22">Delivery Project</div>
		    </div>
<c:if test="${empty SID}">
			<div class="w3-col s1">
		    	<div class="w3-button w3-block w3-black" id="jbtn">JOIN</div>
		    </div>
		    <div class="w3-col s1">
		      	<div class="w3-button w3-block w3-black" id="lbtn">LOGIN</div>
	    	</div>
</c:if>
<c:if test="${not empty SID}">
		    <div class="w3-col s2">
		      	<div class="w3-button w3-block w3-black" id="obtn">LOGOUT</div>
	    	</div>
</c:if>
	  	</div>
	</div>
	<div class="w3-center w3-container w3-center">
		<div class="w75p mt100">
		<div class="w3-center">
			<div class="w3-col m3 num1">
				<div class="w3-col w3-card-4 w3-padding num3" style="width:355px; background-color:#f5f5f5;">
				<h3><b>### 실시간 채팅 ###</b></h3>
					<textarea class="w3-padding" id="chatbox" rows="13" cols="30" readonly style="background-color:#f5f5f5;"></textarea>	
					<form class="w3-margin-bottom">
						<input id="chatid" type="text" value="${SID}" disabled style="width:321px;">
						<div class="mgt5" style="width:321px;">
							<input class="w3-col m9 mgr5" id="textMessage" type="text" style="width:260px;">
							<input class="w3-col m2"  value="Send" type="button" id="sendbtn" style="width:56px;">
						</div>
					</form>
				</div>
				
				<div class="w3-col hotclick w3-border w3-card-4 mt50" style="width:355px; background-color:#f5f5f5;">
				<h3><b><span class="w3-text-red">HOT</span> 게시물</b></h3>
					<div class="w3-col w3-padding w3-border mgl12"style="width:321px;">
						<form method="POST" action="/deli/board/boardForm.dlv" id="frm2" name="frm2">
							<input type=hidden id="bno" name="bno">
	<c:forEach var="data" items="${TLIST}" varStatus="st">
								<div class="w3-col w3-button hotbtn w3-left-align" id="${data.bno}">
									<div><span class="w3-text-red"><b>best. ${st.count}</b></span>
										<div><small>&lt; ${data.city} &gt;</small></div>
										<div class="titleFont">${data.title}</div>
									</div>
								</div>
								<hr class="hotclickhr w3-col">		
	</c:forEach>			
						</form>		
					</div>
				</div>
			</div>
			<form method="POST" action="/deli/board/boardList.dlv" id="frm" name="frm">
				<input type="hidden" id="maincity" name="city" value="">
				<div class="w3-col m6 mt75 num2">
					<img src="/deli/img/main/total.png" style="width: 450px; margin-right:20px;">
						<h3 style="position: relative; top: -560px; right: 101px;"><b class="selArea citytitle" id="서울특별시">서울</b></h3>
						<h3 style="position: relative; top: -557px; right: 70px;"><b class="selArea citytitle" id="경기도">경기/인천</b></h3>
						<h3 style="position: relative; top: -675px; right: -50px;"><b class="selArea citytitle" id="강원도">강원</b></h3>
						<h3 style="position: relative; top: -599px; right: -4px;"><b class="selArea citytitle" id="충청북도">충북</b></h3>
						<h3 style="position: relative; top: -588px; right: 115px;"><b class="selArea citytitle" id="충청남도">충남/대전</b></h3>
						<h3 style="position: relative; top: -516px; right: 80px;"><b class="selArea citytitle" id="전라북도">전북</b></h3>
						<h3 style="position: relative; top: -443px; right: 90px;"><b class="selArea citytitle" id="전라남도">전남/광주</b></h3>
						<h3 style="position: relative; top: -695px; right: -105px;"><b class="selArea citytitle" id="경상북도">경북/대구</b></h3>
						<h3 style="position: relative; top: -600px; right: -80px;"><b class="selArea citytitle" id="경상남도">경남/부산/울산</b></h3>
						<h3 style="position: relative; top: -470px; right: -107px;"><b class="selArea citytitle" id="제주도">제주</b></h3>
				</div>
			</form>
		</div>
		<c:if test="${not empty SID}">			
			<div class="w3-col m3">
				<div class="w3-white w3-text-grey w3-card-4">
					<div class="w3-display-container pdt10">
						<img src="/deli/upload/${MYINFO.aid}" style="width:80px; margin-top:10px; margin-left:50px;"
								alt="Avatar" class="w3-left w3-circle">
						<h3 style="margin-top:30px; margin-right:30px;"><b>${MYINFO.id}</b></h3>
						
						<div class="w3-display-bottomleft w3-container w3-text-black">
						</div>
					</div>
					
					<div class="w3-container">
						<hr>
						<p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>기본정보</b></p>
						<p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>이름 : ${MYINFO.name}</p>
						<p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>지역 : ${MYINFO.marea}</p>
						<p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>카카오ID : ${MYINFO.kid}</p>
						<hr>
						
						
						<p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>평점</b></p>
						<p>나의 매너점수</p>
						<div class="w3-light-grey w3-round-xlarge w3-small">
							<div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:${MYINFO.esti}%">${MYINFO.esti}%</div>
						</div>
						<hr>
						
						
						<p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>회원관리</b></p>
						<p class="memText mainBtn" id="msgbtn">쪽지보내기</p>
						<hr>
						<div class="msList mainBtn">
							<p class="mainBtn">받은쪽지함</p>
							
							<div class="w3-light-grey w3-round-xlarge">
	<c:if test="${MSCNT.ck ne 0}">
								<div class="w3-round-xlarge w3-teal mainBtn" style="height:24px;width:${MSCNT.res}%">${MSCNT.ck}건</div>
	</c:if>
	<c:if test="${MSCNT.ck eq 0}">
								<div class="w3-round-xlarge w3-text-black mainBtn" style="height:24px;">${MSCNT.ck}건</div>
	</c:if>
							</div>
						</div>
						<hr>
						<p class="mainBtn" id="friList">친구목록</p>
						<hr>
						<div class="mainBtn" id="apfriList">
							<p>친구 신청 대기</p>
							<div class="w3-light-grey w3-round-xlarge">
	<c:if test="${MYINFO.ck le 100 }">
		<c:if test="${MYINFO.res ne 0}">         
								<div class="w3-round-xlarge w3-teal" style="height:24px;width:${MYINFO.ck}%">${MYINFO.res}명</div>
		</c:if>
		<c:if test="${MYINFO.res eq 0}">         
								<div class="w3-round-xlarge w3-text-black w3-center-align" style="height:24px;">${MYINFO.res}명</div>
		</c:if>
	</c:if>
	<c:if test="${MYINFO.ck gt 100 }">       
								<div class="w3-round-xlarge w3-teal" style="height:24px;width:100%">${MYINFO.res}명</div>
	</c:if>         
							</div>
						</div>
						<hr>	
						<p class="memText mainBtn" id="friarr">주변친구보기</p>
						<hr>	
						<p class="memText mainBtn" id="coupon">나의쿠폰</p>
						<hr>
						<p class="memText mainBtn" id="estibtn">평가하러가기</p>
						<hr>
						<p class="memText mainBtn" id="editbtn">회원정보수정</p>
						<br>
					</div>
				</div>
			</div>
</c:if>
		</div>
	</div>
		<div class="w3-col myfriblock" id="myfriblock">
			<div class="w3-container w3-padding-32" id="about">
				<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">내 친구목록<span class="w3-text-gray w3-button w3-center" id="fList">&nbsp;-&nbsp;</span></h3>
			 </div>
<c:if test="${not empty SID}">	
			
			 <div class="w3-row-padding">
			 
	<c:forEach var="list" items="${MYFRIEND}"> 
				<div class="w3-col l2 m3 w3-margin-bottom">
					<div class="w3-col">
						<img src="/deli/upload/${list.aid}" style="width: 231px; height: 231px; overflow: hidden;">
					</div>
					<h3>${list.id}</h3>
					<hr>
					<p>매너점수 : ${list.esti}</p>
					<!-- <p class="w3-opacity">매너점수</p> -->
					<div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:${list.pesti}%">${list.pesti}%</div>
					<p><button class="w3-button w3-light-grey w3-block mail">Contact</button></p>
					<form method="post" action="/deli/board/msForm.dlv" name="mesfrm" id="mesfrm">
						<input type="hidden" name="mesid" value="${list.id}">
					</form>
				</div>
	</c:forEach>    
			</div>
</c:if>
		</div>
		<div class="w3-col apfriblock" id="apfriblock">
<c:if test="${not empty SID}">
		<div class="w3-container w3-padding-32" id="about">
			<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">친구 수락 대기<span class="w3-text-gray w3-button" id="afList">&nbsp;-&nbsp;</span></h3>
		</div>
		
		 <div class="w3-row-padding">
		 
	<c:forEach var="list" items="${AFRIEND}"> 
			<div class="w3-col l2 m3 w3-margin-bottom">
				<img src="/deli/upload/${list.aid}" style="width: 231px; height: 231px; overflow: hidden;">
				<h3>${list.id}</h3>
				<hr>
				<p>매너점수 : ${list.esti}</p>
				<!-- <p class="w3-opacity">매너점수</p> -->
				<div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:${list.pesti}%">${list.pesti}%</div>
				<div>
					<p class="w3-col m6"><button class="w3-button w3-light-grey w3-block apbtn" id="${list.mno}">수락</button></p>
					<p class="w3-col m6"><button class="w3-button w3-light-grey w3-block debtn" id="${list.mno}">거절</button></p>
				</div>
			 </div>
	</c:forEach>    
		</div>
</c:if>
		</div>
		<div class="w3-col" style="height:20px;"> </div>
		 <form method="POST" action="/deli/board/apFriend.dlv" id="friendfrm" name="friendfrm">
		 	<input type="hidden" name="mno" id="frimno">
		 	<input type="hidden" id="result" value="${param.result}">
		 	<input type="hidden" name="id" value="${SID}">
		 </form>
<c:if test="${not empty CHATLOG}" >
	<c:forEach var="chatlog" items="${CHATLOG}">
		<input type="hidden" class="chatlog" value="${chatlog.body}">
		<input type="hidden" class="chatlogid" value="${chatlog.id}">
	</c:forEach>
</c:if>
<c:if test="${not empty param.result}">
	<div id="id01" class="w3-modal">
		<div class="w3-modal-content w3-animate-top w3-card-4">
			<header class="w3-container w3-teal"> 
				<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
				<h2>친구추가 결과</h2>
			</header>
			<div class="w3-container">
				<p>${param.result}</p>
			</div>
		</div>
	</div>
</c:if>
</body>
</html>