package com.fyp.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fyp.admin.daoimp.AdminDaoImp;

@RestController
public class RestAdminController {
	@Autowired
	AdminDaoImp adminDaoImp;
	@GetMapping("/dismiss")
	public String dissmiss(@RequestParam(value="id", required = true) int id) {
		System.out.println("in Dismissed method");
		adminDaoImp.dismissEmployee(id);
		return "Dismissed";
	}

}
