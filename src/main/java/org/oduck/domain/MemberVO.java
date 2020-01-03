package org.oduck.domain;

public class MemberVO {
	private String  member_id;
	private String  member_pw;
	private String  member_name;
	private String  member_addr;
	private String  member_addr_detail;
	private int		member_pnum;
	private String  member_email;
	private boolean member_enable;
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw(){
		return null;
	}
	public void setMember_pw(String member_pw){
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_addr() {
		return member_addr;
	}
	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}
	public String getMember_addr_detail() {
		return member_addr_detail;
	}
	public void setMember_addr_detail(String member_addr_detail) {
		this.member_addr_detail = member_addr_detail;
	}
	public int getMember_pnum() {
		return member_pnum;
	}
	public void setMember_pnum(int member_pnum) {
		this.member_pnum = member_pnum;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public boolean isMember_enable() {
		return member_enable;
	}
	public void setMember_enable(boolean member_enable) {
		this.member_enable = member_enable;
	}
	
}
