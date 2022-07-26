$(document).ready(function(){
	
	$('#hbtn').click(function(){
		$(location).attr('href', '/deli/main.dlv');
	});
			
	$('#total').click(function(){
		$('#frm1').submit();
	});
			
	$('#faq').click(function(){
		$(location).attr('href', '/deli/faq/board.dlv');
	});
		
	$('#obtn').click(function(){
		$(location).attr('href', '/deli/member/logout.dlv');
	});
	
	$('#lbtn').click(function(){
		$(location).attr('href', '/deli/member/login.dlv');
	});
});