package org.oduck.domain;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

import lombok.Data;

@Data
public class MemberVO {
	private int 	member_num;
	private String  member_id;
	private String  member_pw;
	private String  member_name;
	private int 	member_addr_num;
	private String  member_addr;
	private String  member_addr_detail;
	private String	member_pnum;
	private String  member_email;
	private boolean member_enable;
	private String  member_insertdate;
	private String  member_role;
	
	private Collection<? extends GrantedAuthority> authorities;

	
}
