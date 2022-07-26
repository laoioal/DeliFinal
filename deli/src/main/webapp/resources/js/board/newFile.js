/**
 * @author	이용현
 * @since	2022/05/28
 * @version	v.1.0
 * 
 * 			작업이력 ]
 * 				2022.05.28	-	클래스제작
 * 								담당자 : 이용현
 */

$(document).ready(function(){
	$('.citytitle').click(function(){
		//var city = $(this).find('input').val();
		var city = $(this).attr('id');
		$('#maincity').val(city);
		$('#frm').submit();
	}); 

	$('#total').click(function(){
		$('#frm1').submit();
	});
	
	$('#obtn').click(function(){
		$(location).attr('href', '/deli/member/logout.dlv');
	});
	
	$('#lbtn').click(function(){
		$(location).attr('href', '/deli/member/login.dlv');
	});
	
	$('#jbtn').click(function(){
		$(location).attr('href', '/deli/member/join.dlv');
	});

//	var webSocket = new WebSocket('ws://180.228.75.2/deli/main.dlv');
//	var webSocket = new WebSocket('ws://192.168.0.107/deli/main.dlv');
	var webSocket = new WebSocket('ws://192.168.0.131/deli/main.dlv');
	var chatbox = document.getElementById('chatbox');
	
	webSocket.onopen = function(chat) {
		var el = document.getElementsByClassName('chatlog');
		var logid = document.getElementsByClassName('chatlogid');
		if(!$('#chatid').val()){
			chatbox.value += '##### 로그인후 이용 가능합니다.\n\n';
		} else {
			chatbox.value += '##### 채팅하실 수 있습니다.\n\n';
		}
 
		for(var i = 0; i < el.length; i++) {
				 var k = el[i].value;
				 var j = logid[i].value;
				 if($('#memberid').text() == j) {
					chatbox.value += j + '(나의 메세지) ' + k +'\n';
				} else {
				 	chatbox.value += j + ' '+ k +'\n';
				 }
			}
	};
	
	webSocket.onclose = function(chat) {
		chatbox.value += '접속이 끊어졌습니다.\n';
	};
	webSocket.onerror = function(chat) {
		chatbox.value += '에러발생\n';
	};
	
	webSocket.onmessage = function(chat) {
		chatbox.value += chat.data + '\n';
	};

	$('#sendbtn').click(function() {
		if(!$('#chatid').val()){
			alert('로그인이 필요합니다.');
			return;
		} else {
			var id = document.getElementById('chatid');
			var chat = document.getElementById('textMessage');
			
			chatbox.value += id.value + '(나의 메세지) ' + chat.value + '\n';
			webSocket.send('{{' + id.value + '}}' + chat.value);
			
			$.ajax({
				url: '/deli/board/chatLog.dlv',
				type: 'post',
				dataType: 'json',
				data: {
					id : id.value,
					body: chat.value
				}
			});
			chat.value = '';
			
			$('#chatbox').scrollTop($('#chatbox').prop('scrollHeight'));
		}
	});
	
	$('.apbtn').click(function(){
		var mno = $(this).attr('id');
		$('#frimno').val(mno);
		$('#friendfrm').submit();
	});
	
	$('.debtn').click(function(){
		var mno = $(this).attr('id');
		$('#frimno').val(mno);
		$('#friendfrm').attr('action', '/deli/board/denyFriend.dlv');
		$('#friendfrm').submit();
	});
	
	$('#msgbtn').click(function(){
		$(location).attr('href', '/deli/board/msForm.dlv');
	});
	
	$('.msList').click(function(){
		$(location).attr('href', '/deli/board/messageList.dlv');
	});
	
	$('#friList').click(function(){
		$('.myfriblock').show(100, function(){
			$(location).attr('href', '#myfriblock');
		});
	});
	
	$('#apfriList').click(function(){
		$('#apfriblock').show(100, function(){
			$(location).attr('href', '#apfriblock');
		});
	});
	
	$('#fList').click(function(){
		$('#myfriblock').css('display', 'none');
	});
	
	$('#afList').click(function(){
		$('#apfriblock').css('display', 'none');
	});
	
	
	$('.hotbtn').click(function(){
		var bno = $(this).attr('id');
		$('#bno').val(bno);
		$('#frm2').submit();
	});
	
	$('.mail').click(function(){
		$(this).parent().parent().find('form').submit();
	});
	
	$('#friarr').click(function(){
		$(location).attr('href', '/deli/board/friendArround.dlv');
	});
	
	$('#editbtn').click(function(){
		$(location).attr('href', '/deli/member/editInfo.dlv');
	});
	
	$('#faq').click(function(){
		$(location).attr('href', '/deli/faq/board.dlv');
	});
	
	$('#coupon').click(function(){
		$(location).attr('href', '/deli/event/slot.dlv');
	});
	
	$('#estibtn').click(function(){
		$(location).attr('href', '/deli/review/rvList.dlv');
	});
});