package com.phoenix.portfolio;

public class PortfolioDTO {
	private String pnum;
	private String ptitle;
	private String pcontents;
	private String purl;
	private String ppath;
	private String userid;
	
	public PortfolioDTO() {
	}

	
	

	public PortfolioDTO(String ptitle, String pcontents, String purl, String ppath, String userid) {
		this.ptitle = ptitle;
		this.pcontents = pcontents;
		this.purl = purl;
		this.ppath = ppath;
		this.userid = userid;
	}




	public PortfolioDTO(String pnum, String ptitle, String pcontents, String purl, String ppath, String userid) {
		this.pnum = pnum;
		this.ptitle = ptitle;
		this.pcontents = pcontents;
		this.purl = purl;
		this.ppath = ppath;
		this.userid = userid;
	}

	

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

	public String getPnum() {
		return pnum;
	}

	public String getPtitle() {
		return ptitle;
	}

	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}

	public String getPcontents() {
		return pcontents;
	}

	public void setPcontents(String pcontents) {
		this.pcontents = pcontents;
	}

	public String getPurl() {
		return purl;
	}

	public void setPurl(String purl) {
		this.purl = purl;
	}

	public String getPpath() {
		return ppath;
	}

	public void setPpath(String ppath) {
		this.ppath = ppath;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	
	
	
}
