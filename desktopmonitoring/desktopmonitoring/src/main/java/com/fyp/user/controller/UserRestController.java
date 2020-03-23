package com.fyp.user.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fyp.user.daoImp.UserDaoImp;

@RestController
public class UserRestController {
	@Autowired
	private UserDaoImp userdaoimp;

	@GetMapping("/CurrentTime")
	public String getCurrentTime(@RequestParam(required = true) String email) {
		System.out.println(email);
		int val = userdaoimp.checkemail(email);
	//	System.out.println("Email exist" + val);
		if (val == 1) {
			return "Email Already Exsist";
		} else {
			return null;
		}
	}
}
