<%-- 

/**
 * @author	이용현
 * @since	2022/05/27
 * @version	v.1.0
 * 
 * 			작업이력 ]
 * 				2022.05.27	-	클래스제작
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
<title>Board Form</title>
<script type="text/javascript" src="/deli/resources/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="/deli/resources/js/board/boardForm.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/base.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/user.css">
<link rel="stylesheet" type="text/css" href="/deli/resources/css/w3.css">
<script type="text/javascript" src="/deli/resources/js/board/boardForm.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
</style>
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


<c:if test="${not empty param.result}">
	<input type="hidden" id="result" value="${param.result}">
</c:if>
<c:if test="${not empty param.cancleresult}">
	<input type="hidden" id="cancleresult" value="${param.cancleresult}">
</c:if>


	<div class="mxw980 w3-content w3-center">
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
		<!-- 접수가능 게시글 -->
<c:if test="${MAIN.endalert > 0}">		
		<div class="w3-col w3-padding w3-left-align w3-border w3-card-4 w3-margin-top ctdw" id="${MAIN.endtime}">
			<div class="count" id="count">
				<div class="w3-col">
					<div class="w3-left maintext area"><small>${MAIN.area} &gt;</small></div>
					<div class="w3-col w3-button w3-border subbtn m1 w3-right" id="boardpic" onclick="relayout()">픽업장소</div>
					<input type="hidden" id="boardpicaddr" value="${MAIN.parea}">
					<div class="w3-col w3-button w3-border subbtn m1 w3-right" id="canclebtn">지원취소</div>
					<div class="w3-col w3-button w3-border subbtn m1 w3-right" id="conbtn">신청현황</div>
					<div class="w3-col w3-button w3-border subbtn m1 w3-right" id="subbtn">신청</div>
					<div class="w3-right w3-margin-right" id="id"></div>
				</div>
			</div>
			<div class="w3-col m8">
				<h1 class="w3-col maintext">${MAIN.title}</h1>
				<div class="w3-col maintext">${MAIN.id}</div>
				<div class="w3-col maintext"><small>${MAIN.sdate}&nbsp;&nbsp;&nbsp;조회수 : ${MAIN.click}</small></div>
			</div>
			<div class="w3-col w3-right m1 w3-margin-top" id="regimem">
<c:forEach var="data" items="${MEMBER}">
				<h6 class="w3-col regimember" id="${data.aid}">
					<small id="alertmember">${data.aid}
			<c:if test="${(SID ne data.aid) and (not empty SID)}">
					<button class="w3-white w3-button fbtn" id="${data.mno}"> + </button>
			</c:if>
					</small>
				</h6>
</c:forEach>	
			</div>
			<hr class="w3-col mgt0">
			<div>
				<div class="w3-col m8">${MAIN.body}</div>
				<div class="w3-col m4"> 
					<div class="w3-center">식당정보</div>
<c:forEach var="menu" items="${MENU}">	
					<div>
						<div class="w3-right w3-padding" id="restname">${menu.rname}</div>
						<div class="mname w3-padding pricebtn" id="${menu.mname}">${menu.mname} : ${menu.mprice}<div class="w3-button w3-right pricebtn1" id="${menu.mprice}">-</div><input class="inputprice w3-right w3-center" type="text" disabled value="0"><div class="w3-button w3-right pricebtn2" id="${menu.mprice}">+</div></div>
					</div>
</c:forEach>	
					<input type="hidden" id="price" name="price">
				</div>			
			</div>
		</div>

	<c:if test="${not empty PAY}">
		<form method="POST" action="/deli/payment/beforePay.dlv" id="payfrm" name="payfrm">
		<div class="w3-col w3-border w3-margin-top w3-left w3-padding" id="abc">
<c:forEach var="remenu" items="${MENU}">
		<div class="w3-col menuinputfrm">
			<div class="w3-col m4 w3-right-align">${remenu.mname} : &nbsp;&nbsp;</div>
			<input class="w3-col m5 w3-center valueck" type="text" name="${remenu.mname}" disabled>
		</div>	
</c:forEach>
		</div>
		</form>
		<div class="w3-col">
		</div>
		<div class="w3-col w3-button w3-border w3-margin-top" id="paybtn">결제하기</div>
	</c:if>

</c:if>		
<c:if test="${MAIN.endalert < 0}">
		<div class="w3-col w3-padding w3-left-align w3-border w3-card-4 w3-margin-top">
			<div>
				<div class="w3-col">
					<div class="w3-left maintext area"><small>${MAIN.area} &gt;</small></div>
					<div class="w3-col w3-button w3-border subbtn m1 w3-right" id="conbtn">신청현황</div>
					<div class="w3-right w3-margin-right">마감시간 : ${MAIN.endtime}</div>
				</div>
			</div>
			<div class="w3-col m8">
				<h1 class="w3-col maintext">${MAIN.title}</h1>
				<div class="w3-col maintext">${MAIN.id}</div>
				<div class="w3-col maintext"><small>${MAIN.sdate}&nbsp;&nbsp;&nbsp;조회수 : ${MAIN.click}</small></div>
			</div>
			<div class="w3-col w3-right m1 w3-margin-top" id="regimem">	
<c:forEach var="data" items="${MEMBER}">
				<h6 class="w3-col regimember" id="${data.aid}">
					<small id="alertmember">${data.aid}
			<c:if test="${(SID ne data.aid) and (not empty SID)}">
					<button class="w3-white w3-button fbtn" id="${data.mno}"> + </button>
			</c:if>
					</small>
				</h6>
</c:forEach>		
			</div>
			<hr class="w3-col mgt0">
			<div class="w3-col">${MAIN.body}</div>
		</div>
</c:if>		
		<div class="w3-col w3-border w3-margin-top w3-center w3-padding w3-card-4">
<c:forEach var="data" items="${REBOARD}">
			<div class="w3-col w3-left-align" style="padding-left: ${data.res * 70}px;">
				<div class="w3-text-blue">${data.id}</div>
				<div>${data.body}</div>
				<div class="w3-text-gray"><small>${data.sdate} &nbsp;&nbsp;&nbsp;<span class="w3-button reboard">답글달기</span></small></div>
				<div class="w3-center w3-padding rebtn">
					<textarea class="w3-border w3-round w3-padding" style="width:90%; resize: none;" placeholder="댓글을 입력해주세요"></textarea>
					<span class="w3-button wbtn regibtn" id="${data.bno}">등록</span>
				</div>
			<hr>
			</div>
</c:forEach>
			<div class="w3-center w3-padding">
				<textarea class="w3-border w3-round w3-padding" id="reboardBody" style="width:90%; resize: none;" placeholder="댓글을 입력해주세요"></textarea>
				<span class="w3-button wbtn" id="reboardBtn">등록</span>
			</div>
		</div>
		<div class="w3-col" style="height:20px;"> </div>
	</div>

	<form method="POST" action="/deli/board/applyProc.dlv" id="pageFrm" name="pageFrm">
		<input type="hidden" name="nowPage" id="nowPage" value="${param.nowPage}">
		<input type="hidden" name="city" id="city" value="${param.city}">
		<input type="hidden" name="search" id="search" value="${param.search}">
		<input type="hidden" name="check" id="check" value="${param.check}">
		<input type="hidden" name="bno" id="bno" value="${MAIN.bno}">
		<input type="hidden" name="ck" value="1">
		<input type="hidden" name="res" id="res">
		<input type="hidden" name="upno" id="upno">
		<input type="hidden" name="body" id="body">
		<input type="hidden" name="1mname" id="1mname">
		<input type="hidden" name="1price" id="1price">
		<input type="hidden" name="pickup" value="${MAIN.parea}">
	</form>
	
	
	<div id="id01" class="w3-modal">
		<div class="w3-modal-content w3-animate-top w3-card-4">
			<header class="w3-container w3-teal"> 
				<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
				<h2>PickUp 장소</h2>
			</header>
			<div class="w3-container">
			<div id="mapset">
				<div id="map" style=""></div>
			</div>
			</div>
		</div>
	</div>	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6fb471c69858a04f22e5ff56c302f30&libraries=services"></script>
<script>
	var cen;
	var addr = document.getElementById('boardpicaddr').value;
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	//지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	//주소로 좌표를 검색합니다
	geocoder.addressSearch(addr, function(result, status) {
		map.relayout();
	// 정상적으로 검색이 완료됐으면 
	if (status === kakao.maps.services.Status.OK) {
	
		var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		cen = coords;
		   // 결과값으로 받은 위치를 마커로 표시합니다
		   var marker = new kakao.maps.Marker({
		       map: map,
		       position: coords
		   });
		
		   // 인포윈도우로 장소에 대한 설명을 표시합니다
		   var infowindow = new kakao.maps.InfoWindow({
		       content: '<div style="width:150px;text-align:center;">PickUp</div>'
		   });
		   infowindow.open(map, marker);
		
		   // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		   map.relayout(coords);
		} 
	});    

function relayout() {    
    document.getElementById('id01').style.display='block';
    document.getElementById('map').style.width='100%';
    document.getElementById('map').style.height='700px';
    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
    map.relayout();
    map.setCenter(cen);
}
</script>	
</body>
</html>