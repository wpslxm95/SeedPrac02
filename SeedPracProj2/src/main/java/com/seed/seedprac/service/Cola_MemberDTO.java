package com.seed.seedprac.service;

public class Cola_MemberDTO {
/*CREATE TABLE cola_member(
    USERNO NUMBER PRIMARY KEY,
    ID NVARCHAR2(50),
    PWD VARCHAR2(100),
    EMAIL VARCHAR2(255),
    NAME VARCHAR2(100),
    SUBNAME VARCHAR2(100)    
);*/
	private String userno;
	private String id;
	private String pwd;
	private String email;
	private String name;
	private String subname;
	public String getUserno() {
		return userno;
	}
	public void setUserno(String userno) {
		this.userno = userno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	
	
}
