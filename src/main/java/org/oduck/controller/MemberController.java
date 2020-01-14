package org.oduck.controller;

import org.oduck.domain.MemberVO;
import org.oduck.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String signInDo(){
		return null;
	}
	
	@PostMapping("/idCheck")
	@ResponseBody
	public int idCheck(@RequestBody MemberVO vo) {
		return memberMapper.idCheck(vo.getMember_id());
	}

}
