package com.crm.entities;

public class SysUser {
	private Integer userId;
	private String userCode;
	private String userName;
	private String userPassword;
	private Character userState;
	
	public Integer getUserId() {
		return userId;
	}


	public void setUserId(Integer userId) {
		this.userId = userId;
	}


	public String getUserCode() {
		return userCode;
	}


	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserPassword() {
		return userPassword;
	}


	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}


	public Character getUserState() {
		return userState;
	}


	public void setUserState(Character userState) {
		this.userState = userState;
	}


	@Override
	public String toString() {
		return "SysUser [userId=" + userId + ", userCode=" + userCode + ", userName=" + userName + ", userPassword="
				+ userPassword + ", userState=" + userState + "]";
	}
	
	
}
