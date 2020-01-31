package org.oduck.controller;

import javax.mail.internet.MimeMessage;

import org.apache.commons.lang3.RandomStringUtils;
import org.oduck.domain.MemberVO;
import org.oduck.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/*")
public class MemberController {
	
	@Autowired
	MemberMapper memberMapper;
	@Autowired
	BCryptPasswordEncoder passEncoder;
	@Autowired
	JavaMailSender mailSender;
	
	
	

	
	@GetMapping("/logIn")
	public String logIn() throws Exception{
		return "5duck/member/logIn.tiles";
	}
	
	@GetMapping("/accessError")
	public String accessDenied(Authentication auth, Model model) {
		log.info("access Denied : "+ auth);
		return "5duck/member/accessError.tiles";
	}
	
	@GetMapping("/error404")
	public String error404() {
		return "5duck/404.tiles";
	}
	
	@GetMapping("/signIn")
	public String signIn() {
		return "5duck/member/signIn.tiles";
	}
	
	@PostMapping("/signInDo")
	public String signInDo(MemberVO vo){
		vo.setMember_pw(passEncoder.encode(vo.getMember_pw()));
		System.out.println(vo.toString());
		memberMapper.signIn(vo);
		log.info("signIn : "+vo.getMember_id());
		return "redirect:/";
		
	}
	
	@PostMapping("/idCheck")
	@ResponseBody
	public int idCheck(@RequestBody MemberVO vo) {
		return memberMapper.idCheck(vo.getMember_id());
	}
	
	@GetMapping("/findID")
	public String findID() {
		return "5duck/member/findID.tiles";
	}
	
	@GetMapping("/findID.do")
	@ResponseBody
	public String findIdDo(MemberVO vo) {
		return memberMapper.findID(vo);
	}
	
	@GetMapping("/findPW")
	public String findPW() {
		return "5duck/member/findPW.tiles";
	}
	
	@PostMapping("/findPW.do")
	@ResponseBody
	public int findPwDo(@RequestBody MemberVO vo) {
		MemberVO memberinfo = memberMapper.findInfo(vo);
		if(memberinfo == null) {
			return 0;
		}
		else {
			String tmpPw = RandomStringUtils .randomAlphanumeric(12);
			memberinfo.setMember_pw(passEncoder.encode(tmpPw));
			memberMapper.tmpPw(memberinfo);
			System.out.println(tmpPw);
			System.out.println(memberinfo.toString());
			
			String setFrom = "kimaron0725@gmail.com";
			String toMail = memberinfo.getMember_email();
			String title = "임시비밀번호 발급 이메일 입니다.";
			String content = 
					System.getProperty("line.separator")+
					System.getProperty("line.separator")+
					"안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다."
					+System.getProperty("line.separator")+
					System.getProperty("line.separator")+
					"임시 비밀번호는"+tmpPw+"입니다."
					+System.getProperty("line.separator")+
					System.getProperty("line.separator")+
					"로그인 후 내정보 보기 > 비밀번호 수정을 부탁드립니다.";
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
				messageHelper.setFrom(setFrom);
				messageHelper.setTo(toMail);
				messageHelper.setSubject(title);
				messageHelper.setText(content);
				mailSender.send(message);
			} catch(Exception e) {
				System.out.println(e);
			}
			return 1;
		}
	}
	
	

}
