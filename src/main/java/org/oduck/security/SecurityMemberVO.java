package org.oduck.security;

import org.oduck.domain.MemberVO;
import org.springframework.security.core.userdetails.User;

public class SecurityMemberVO extends User{

	public SecurityMemberVO(MemberVO memberVO) {
		super(memberVO.getMember_id(), memberVO.getMember_pw(), memberVO.getAuthorities());
	}

}
