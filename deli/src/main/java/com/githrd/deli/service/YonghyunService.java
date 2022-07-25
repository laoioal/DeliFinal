package com.githrd.deli.service;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.transaction.annotation.Transactional;

import com.githrd.deli.dao.*;
import com.githrd.deli.vo.*;

public class YonghyunService {
	@Autowired
	YonghyunDao yDao;
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	public String selFriend(YonghyunVO yVO, String id) {
		StringBuffer buff = new StringBuffer();
		yVO.setId(id);

		int cnt = yDao.selFriend(yVO);
		
		buff.append("{ \"result\" : \"");
		
		if(cnt == 0) {
			// 친구추가 가능
			int num = yDao.upFriend(yVO);

			if(num == 1) {
				// 친구추가 성공
				buff.append("OK");
			} else {
				// 친구추가 실패
				buff.append("NO");
			}
		} else {
			// 이미 신청
			buff.append("AL");
		}
		buff.append("\" }");

		return buff.toString();
	}
	
	@Transactional
	public void acceptFriend(YonghyunVO yVO) {
		yDao.inFriend(yVO);
		yDao.apFriend(yVO);
	}
	
	
	public void mailsend() {
		
		List<YonghyunVO> list = yDao.couponSel();
		joinEmail(list);
	}
	
	//이메일 보낼 양식!
	public void joinEmail(List<YonghyunVO> list) {
		String setFrom = "dktldkgoddh@naver.com"; // email-config에 설정한 자신의 이메일 주소를 입력 
		String title = "<Delivery> 쿠폰 유효기간 만료예정 안내"; // 이메일 제목
		for(YonghyunVO i : list) {
			String toMail = i.getMail();
			String cpname = i.getCpname();
			String cpexp = i.getCpexp();
			String content = 
					"안녕하세요 고객님" + 	//html 형식으로 작성 ! 
	                "<br>" +
	                "보유하신 \"" + cpname + "\"쿠폰 유효기간이" + 
	                "<br>" + 
	                cpexp + " 까지이므로 사용을 서둘러주세요!!";
			mailSend(setFrom, toMail, title, content);
		}
	}
	
	//이메일 전송 메소드
	public void mailSend(String setFrom, String toMail, String title, String content) { 
		MimeMessage message = mailSender.createMimeMessage();
		// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능하다.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content,true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
}
