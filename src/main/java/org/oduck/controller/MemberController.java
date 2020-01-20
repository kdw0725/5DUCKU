package org.oduck.controller;

import org.oduck.domain.MemberVO;
import org.oduck.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
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
	
	@GetMapping("/findPW")
	public String findPW() {
		return "5duck/member/findPW.tiles";
	}

}
