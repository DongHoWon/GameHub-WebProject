package com.gamehub.www.database.vo;

import org.apache.ibatis.type.Alias;

@Alias("userinfo")
public class UserInfoVO {

	private String uid;
	private String uname;
	private String umail;
	private String unick;
	private String udate;
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUmail() {
		return umail;
	}
	public void setUmail(String umail) {
		this.umail = umail;
	}
	public String getUnick() {
		return unick;
	}
	public void setUnick(String unick) {
		this.unick = unick;
	}
	public String getUdate() {
		return udate;
	}
	public void setUdate(String udate) {
		this.udate = udate;
	}
}
