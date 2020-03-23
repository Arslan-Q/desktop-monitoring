package com.fyp.admin.models;

public class LoginModel {
	private int adminid;
	private String username;
	private String pass;
	
	
	/**
	 * @return the adminid
	 */
	public int getAdminid() {
		return adminid;
	}
	/**
	 * @param adminid the adminid to set
	 */
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the pass
	 */
	public String getPass() {
		return pass;
	}
	/**
	 * @param pass the pass to set
	 */
	public void setPass(String pass) {
		this.pass = pass;
	}
}
