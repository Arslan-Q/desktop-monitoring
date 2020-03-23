package com.fyp.admin.models;

public class ShowAllEmployeesModel {
private int id;
private String firstname;
private String lastname;
private String Department;
private int work;
private int nonwork;
private String date;
private String email;
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getDepartment() {
	return Department;
}
public void setDepartment(String department) {
	Department = department;
}
public int getWork() {
	return work;
}
public void setWork(int work) {
	this.work = work;
}
public int getNonwork() {
	return nonwork;
}
public void setNonwork(int nonwork) {
	this.nonwork = nonwork;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

}
