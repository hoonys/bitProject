package com.recruit.domain;

//3.14 문
public class UserVO {
	
	private String id;
	private String pw;
	private String cname;
	private String pname;
	private String email;
	private String registnum;
	private String birth;
	private String authCode;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegistnum() {
		return registnum;
	}
	public void setRegistnum(String registnum) {
		this.registnum = registnum;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAuthCode() {
		return authCode;
	}
	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pw=" + pw + ", cname=" + cname + ", pname=" + pname + ", email=" + email
				+ ", registnum=" + registnum + ", birth=" + birth + ", authCode=" + authCode + "]";
	}
	
	
}
