package com.example1.practice1.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class MemberDTO {
	private String userId; //아이디
	private String userPw; //비밀번호
	private String userName; //유저 이름
	private String userBirth; //유저 생년월일
	private String address01; //주소
	private String address02; //주소2
	private String tel1; //010, 011 등등
	private String tel2; //가운데 번호
	private String tel3; //끝 번호
	private String userEmail; //유저 이메일
	
	
	public MemberDTO() {}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPw() {
		return userPw;
	}


	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserBirth() {
		return userBirth;
	}


	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}


	public String getAddress01() {
		return address01;
	}


	public void setAddress01(String address01) {
		this.address01 = address01;
	}


	public String getAddress02() {
		return address02;
	}


	public void setAddress02(String address02) {
		this.address02 = address02;
	}


	public String getTel1() {
		return tel1;
	}


	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}


	public String getTel2() {
		return tel2;
	}


	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}


	public String getTel3() {
		return tel3;
	}


	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	@Override
	public String toString() {
		return "MemberDTO [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", userBirth="
				+ userBirth + ", address01=" + address01 + ", address02=" + address02 + ", tel1=" + tel1 + ", tel2="
				+ tel2 + ", tel3=" + tel3 + ", userEmail=" + userEmail + "]";
	}
	
	
	

}
