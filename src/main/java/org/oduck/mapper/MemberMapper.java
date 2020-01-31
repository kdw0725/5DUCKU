package org.oduck.mapper;

import java.util.List;

import org.oduck.domain.MemberVO;

public interface MemberMapper {
	public int idCheck(String member_id);
	public MemberVO readUser(String member_id);
	public List<String> readAuthority(String member_id);
	public int signIn(MemberVO member_vo);
	public String findID(MemberVO member_vo);
	public MemberVO findInfo(MemberVO member_vo);
	public int tmpPw(MemberVO member_vo);
}
