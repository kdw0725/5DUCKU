package org.oduck.security;

import java.util.ArrayList;
import java.util.List;

import org.oduck.domain.MemberVO;
import org.oduck.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class CustomUserDetailService implements UserDetailsService{
	
	@Autowired
	MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String member_id) throws UsernameNotFoundException {
		MemberVO membervo = memberMapper.readUser(member_id);
		if(membervo != null) {
			membervo.setAuthorities(makeGrantedAuthority(memberMapper.readAuthority(member_id)));
		}else {
			throw new UsernameNotFoundException(member_id);

		}
		return new SecurityMemberVO(membervo);
	}
	
	private static List<GrantedAuthority> makeGrantedAuthority(List<String> roles){
        List<GrantedAuthority> list = new ArrayList<>();
        roles.forEach(role -> list.add(new SimpleGrantedAuthority("ROLE_" + role)));
        return list;
    }



}
