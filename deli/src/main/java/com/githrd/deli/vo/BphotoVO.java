package com.githrd.deli.vo;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author	박찬슬
 * @since	2022.07.01
 * @version	v.1.0
 * 
 * 			작업이력 ]
 * 					2022/07/01	-	담당자 : 박찬슬
 * 									네이버 스마트 에디터 첨부파일 VO 클래스 제작
 *
 */

public class BphotoVO {
	// photo_uploader.html페이지의 form태그내에 존재하는 file 태그의 name명과 일치시켜줌
	private MultipartFile Filedate;
	// callback URL
	private String callback;
	// 콜백함수
	private String callback_func;
	
	public MultipartFile getFiledate() {
		return Filedate;
	}
	public void setFiledate(MultipartFile filedate) {
		Filedate = filedate;
	}
	public String getCallback() {
		return callback;
	}
	public void setCallback(String callback) {
		this.callback = callback;
	}
	public String getCallback_func() {
		return callback_func;
	}
	public void setCallback_func(String callback_func) {
		this.callback_func = callback_func;
	}
}
