package com.phoenix.resumes;

public class ResumesDTO {
	private String username;
	private String gender;
	private String userphone;
	private String useremail;
	private String hight;
	private String school;
	private String major;
	private String term;
	private String career;
	private String etc;
	private String userid;
	
	
	
	public ResumesDTO( String username, String gender, String userphone, String useremail, String hight,
			String school, String major, String term, String career, String etc, String userid) {
		super();
		this.username = username;
		this.gender = gender;
		this.userphone = userphone;
		this.useremail = useremail;
		this.hight = hight;
		this.school = school;
		this.major = major;
		this.term = term;
		this.career = career;
		this.etc = etc;
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getHight() {
		return hight;
	}
	public void setHight(String hight) {
		this.hight = hight;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	
	
}
