$(document).ready(function(){
	$('#obtn').click(function(){
		$('#pcsfrm').attr('action', '/deli/member/logout.dlv');
		$('#vw').val('/deli/member/boardWrite.dlv');
		$('#pcsfrm').submit();
	});
	$('#faq').click(function(){
		$(location).attr('href', '/deli/faq/board.dlv');
	});
	$('#hbtn').click(function(){
		$(location).attr('href', '/deli/main.dlv');
	});
	$('#total').click(function(){
		$('#frm1').submit();
	});
	$('#pbtn').click(function(){
		$(location).attr('href', '/deli/member/insertId.dlv');
	});
	
	// 리셋 버튼 클릭 이벤트
	$('#rbtn').click(function(){
		$('#bfrm').each(function() {
			this.reset();
		});
		oEditors.getById["ir1"].exec("SET_IR", [""]); //내용초기화
//		$('#middle').css('display', 'none');
//		$('#small').css('display', 'none');
//		$('rest').css('display', 'none');
	});
	
//	$('.w3-select').not('#large').css('display', 'none');
//	$('#menu').css('display', 'block');
	$('#end').css('display', 'block');
	
/*	
	// 지역 중분류
	$('#large').change(function(){
		var code = $('#large > option:selected').attr('id');
		$('#middle').css('display', 'none');
		$('#middle').html('<option disabled selected>지역(중)</option>');
		$.ajax({
			url: '/deli/member/mArea.dlv',
			type: 'post',
			dataType: 'json',
			data: {
				code: code
			},
			success: function(data){
				if(data.length != 0){
					for(var i = 0; i < data.length; i++){
						$('#middle').append('<option value="' + data[i].city + '"class="w3-text-blue" id="' + data[i].code + '">' + data[i].city + '</option>');
					}
					$('#middle').css('display', 'block');
				}
			},
			error: function(){
				alert('### 통신 오류 ###');
			}
		});
	});
	
	// 지역 소 분류
	$('#middle').change(function(){
		var code = $('#middle > option:selected').attr('id');
		$('#small').css('display', 'none');
		$('#small').html('<option disabled selected>지역(소)</option>');
		$.ajax({
			url: '/deli/member/sArea.dlv',
			type: 'post',
			dataType: 'json',
			data: {
				code: code
			},
			success: function(data){
				if(data.length != 0){
					for(var i = 0; i < data.length; i++){
						$('#small').append('<option value="' + data[i].city + '"class="w3-text-blue" id="' + data[i].code + '">' + data[i].city + '</option>');
					}
					$('#small').css('display', 'block');
				}
			},
			error: function(){
				alert('### 통신 오류 ###');
			}
		});
	});
	
	// 식당 선택
	$('#menu').change(function(){
		var code = $('#menu > option:selected').attr('id');
		$('#rest').css('display', 'none');
		$('#rest').html('<option disabled selected>식당 선택</option>');
		$.ajax({
			url: '/deli/member/rest.dlv',
			type: 'post',
			dataType: 'json',
			data: {
				code: code
			},
			success: function(data){
				if(data.length != 0){
					for(var i = 0; i < data.length; i++){
						$('#rest').append('<option value="' + data[i].rest + '"class="w3-text-blue">' + data[i].rname + '</option>');
					}
					$('#rest').css('display', 'block');
				}
			},
			error: function(){
				alert('### 통신 오류 ###');
			}
		});
	});
*/	
	
	// 글 등록 버튼 클릭
	$('#wbtn').click(function(){
		var title = $('#title').val();
		var larea = $('#large').val();
		var marea = $('#middle').val();
		var sarea = $('#small').val();
		var end = $('#end').val();
		var category = $('#menu').val();
		var rest = $('#rest').val();
		var placeName = $('#placeName').val();
		var parea = $('#parea').val();
		// 
		
		oEditors.getById['ir1'].exec('UPDATE_CONTENTS_FIELD', []);
		let content = $('#ir1').val();
		
/*		var elm = document.createElement('div');
		$(elm).append(content);
		if($(elm).children().children().attr('src').includes('http')){
			alert("비 정상적인 접근입니다. 이미지 파일 업로드는 우측 상단 사진 버튼을 사용 해주세요.");
			return;
		}*/
		
		if(content == ' ' || content == null){
			alert("내용을 입력해주세요.");
			oEditors.getById["ir1"].exec('FOCUS');
			return;
		} else {
			console.log(content);
		}
		
		if(content.length > 4000){
			alert("입력가능한 글자수를 초과 하였거나, 또는 비 정상적인 접근입니다.");
			return;
		}
		var el = $('#title, #large, #middle, #small, #end, #menu, #rest, #placeName, #parea, #ir1');
		
		for(var i = 0; i < el.length; i++){
			var txt = $(el).eq(i).val();
			if(!txt){
				alert('# 선택하지 않거나, 작성하지 않은 항목이 있습니다!');
				$(el).eq(i).focus();
				return;
			}
		}
		
		$('#bfrm').submit();
	});
});