$(document).ready(function() {
	
	$('#hbtn').click(function() {
		$(location).attr('href',  '/deli/main.dlv');
	});
	
	$('.libtn').click(function() {
		$(location).attr('href',  '/deli/member/login.dlv');
	});
	
	$('#lobtn').click(function() {
		$(location).attr('href',  '/deli/member/logout.dlv');
	});
	
	$('.lbbtn').click(function() {
		$(location).attr('href',  '/deli/main.dlv');
	});
	
});

box1 = true;
box2 = true;
box3 = true;

let num = Math.floor(Math.random() * 5);
let sec1 = (Math.random() + 1) * 1200;
let sec2 = (Math.random() + 1) * 1200;

IMG = new Array();

IMG[0] = new Image(); IMG[0].src = "/deli/img/evt/7.png";
IMG[1] = new Image(); IMG[1].src = "/deli/img/evt/watermelon.png";
IMG[2] = new Image(); IMG[2].src = "/deli/img/evt/grape.png";
IMG[3] = new Image(); IMG[3].src = "/deli/img/evt/banana.png";
IMG[4] = new Image(); IMG[4].src = "/deli/img/evt/apple.png";

function start() {
	$('.sbtn').text("STOP");
	$('.sbtn').attr('onclick', 'stop()');

	if(num == 5) num = 0;
	if(box1) document.images["first"].src = IMG[num % 5].src;
	if(box2) document.images["second"].src = IMG[(num + 2) % 5].src;
	if(box3) document.images["third"].src = IMG[(num + 4) % 5].src;
	
	num += 1;
	tid = setTimeout("start()", 60);
}

function stop() {
	box1 = false;
	setTimeout("stop2()", sec1);
}

function stop2() {
	box2 = false;
	setTimeout("stop3()", sec2);
}

function stop3() {
	box3 = false;
	setTimeout("result()", 100);
}

function result() {
	var first = document.images["first"].src;
	var second = document.images["second"].src;
	var third = document.images["third"].src;
	
	if(first == second && second == third && third == "http://localhost/deli/img/evt/7.png") {
		$('#cpcode').val('EVTSEVEN');
		$('#cpname').val('[EVENT] 슬롯머신 잭팟');
		$('#cpdt').val('50% 할인쿠폰');
		
		alert("7️⃣7️⃣7️⃣ 축하합니다! 50% 할인쿠폰이 쿠폰함으로 지급되었습니다!");
		
		$('#rstfrm').submit();
		
	} else if(first == second && second == third && third == "http://localhost/deli/img/evt/watermelon.png") {
		$('#cpcode').val('EVTSUBAK');
		$('#cpname').val('[EVENT] 슬롯머신 수박');
		$('#cpdt').val('40% 할인쿠폰');
	
		alert("🍉🍉🍉 축하합니다! 40% 할인쿠폰이 쿠폰함으로 지급되었습니다!");
		
		$('#rstfrm').submit();
		
	} else if(first == second && second == third && third == "http://localhost/deli/img/evt/grape.png") {
		$('#cpcode').val('EVTGRAPE');
		$('#cpname').val('[EVENT] 슬롯머신 포도');
		$('#cpdt').val('30% 할인쿠폰');
	
		alert("🍇🍇🍇 축하합니다! 30% 할인쿠폰이 쿠폰함으로 지급되었습니다!");
		
		$('#rstfrm').submit();
		
	} else if(first == second && second == third && third == "http://localhost/deli/img/evt/banana.png") {
		$('#cpcode').val('EVTBANNA');
		$('#cpname').val('[EVENT] 슬롯머신 바나나');
		$('#cpdt').val('20% 할인쿠폰');
	
		alert("🍌🍌🍌 축하합니다! 20% 할인쿠폰이 쿠폰함으로 지급되었습니다!");
		
		$('#rstfrm').submit();
		
	} else if(first == second && second == third && third == "http://localhost/deli/img/evt/apple.png") {
		$('#cpcode').val('EVTAPPLE');
		$('#cpname').val('[EVENT] 슬롯머신 사과');
		$('#cpdt').val('10% 할인쿠폰');
	
		alert("🍎🍎🍎 축하합니다! 10% 할인쿠폰이 쿠폰함으로 지급되었습니다!");
		
		$('#rstfrm').submit();
		
	} else if(first == second || second == third || third == first) {
		$('#cpcode').val('EVT1PARE');
		$('#cpname').val('[EVENT] 슬롯머신 원페어');
		$('#cpdt').val('5% 할인쿠폰');
	
		alert("축하합니다! 5% 할인쿠폰이 쿠폰함으로 지급되었습니다!");
		
		$('#rstfrm').submit();
		
	} else {
		alert("꽝! 다음 이벤트를 기대해주세요!");
		$(location).attr('href', '/deli/main.dlv');
	}

}