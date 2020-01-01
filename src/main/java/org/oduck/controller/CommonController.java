package org.oduck.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/*")
public class CommonController {
	
	@GetMapping("/logIn")
	public String logIn() throws Exception{
		return "5duck/member/logIn.tiles";
	}
	
	@GetMapping("/accessError")
	public String accessDenied(Authentication auth, Model model) {
		log.info("access Denied : "+ auth);
		return "5duck/member/accessError.tiles";
	}
	
}
