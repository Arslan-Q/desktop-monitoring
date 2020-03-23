package com.fyp.user.controller;

import java.awt.AWTException;
import java.awt.HeadlessException;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fyp.admin.daoimp.AdminDaoImp;
import com.fyp.admin.models.AddDeparmentModel;
import com.fyp.user.daoImp.UserDaoImp;
import com.fyp.user.models.HistoryModel;
import com.fyp.user.models.LoginModel;
import com.fyp.user.models.SignUpModel;
import java.util.List;

@Controller
public class UserController {

	@Autowired
	private UserDaoImp userdaoimp;
	@Autowired
	AdminDaoImp adminDaoImp;

	@GetMapping("/")
	public ModelAndView employee_login() {

		ModelAndView object = new ModelAndView("employee_login");
		List<AddDeparmentModel> dep_list = adminDaoImp.getDeparments();
		object.addObject("dep_list", dep_list);

		return object;
	}

	@PostMapping("/signupProcess")
	public ModelAndView signup(@ModelAttribute SignUpModel singnup) {
		userdaoimp.signUp(singnup);
		ModelAndView mavsignup = new ModelAndView("userdashBoard");
		return (mavsignup);
	}

	@PostMapping("/loginProcess")
	public ModelAndView loginsubmit(@ModelAttribute LoginModel login, HttpServletRequest request,
			HttpServletResponse response) {

		int Count = userdaoimp.login(login);
		if (Count > 0) {
			ModelAndView mav = new ModelAndView("userdashBoard");
			String userid = userdaoimp.getuserid(login);
			HttpSession session = request.getSession();
			session.setAttribute("userid", userid);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("employee_login");
			mav.addObject("msg", "Username or Password Wrong");
			return mav;
		}
	}

	@GetMapping("/userpanal")
	public ModelAndView userpanal(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		if (session != null) {

			ModelAndView object = new ModelAndView("userpanal");

			return object;
		} else {
			return employee_login();
		}
	}

	@GetMapping("/screenshot")

	public void screenshot(HttpServletRequest request, HttpServletResponse response)
			throws IOException, HeadlessException, AWTException {
		HttpSession session = request.getSession(false);
		String userid;
		if (session != null) {
			userid = (String) session.getAttribute("userid");
			System.out.println(userid);
			DateTimeFormatter ptndate = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDateTime date = LocalDateTime.now();
			DateTimeFormatter ptnName = DateTimeFormatter.ofPattern("HH-mm-ss");
			LocalDateTime name = LocalDateTime.now();

			final String dir = System.getProperty("user.dir");
			Robot robot = new Robot();
			String format = "jpg";
			String fileName = ptnName.format(name) + "." + format;
			String imgdate = ptndate.format(date);
			String path = dir + "//src//main//resources//static//employee_screenshots//" + fileName;

			Rectangle screenRect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
			BufferedImage screenFullImage = robot.createScreenCapture(screenRect);
			ImageIO.write(screenFullImage, format, new File(path));

			System.out.println("Date:" + imgdate + "--name" + fileName);
			userdaoimp.ScreenshotSave(fileName, imgdate, userid);
		} else {
			employee_login();
		}
	}

	@GetMapping("/userProfile")
	public ModelAndView userProfile(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		String userid;
		userid = (String) session.getAttribute("userid");
		if (userid != null) {
			System.out.println("userProfile"+userid);
			ModelAndView mav = new ModelAndView("userProfile");
			SignUpModel record=userdaoimp.user_Record(Integer.parseInt(userid));
			mav.addObject("rec",record);
			List<AddDeparmentModel> dep_list = adminDaoImp.getDeparments();
			mav.addObject("dep_list", dep_list);

			return mav;
		} else {
			return employee_login();
		}

	}

	@GetMapping("/history")
	public ModelAndView history(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		String userid;
		userid = (String) session.getAttribute("userid");
		if (userid != null) {
			ModelAndView mav = new ModelAndView("histoy");
		List<HistoryModel> list=userdaoimp.History(Integer.parseInt(userid));
		
		mav.addObject("list", list);
		return mav;
		}
		else {
			return employee_login();
			
			
		}
	}

	@GetMapping("/dashboard")
	public ModelAndView dashboard(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		String userid;
		userid = (String) session.getAttribute("userid");
		if (userid != null) {
			ModelAndView mav = new ModelAndView("userdashBoard");
		return mav;}
		else {
			return employee_login();
		}
	}
	@PostMapping("/profileUpdate")
	public ModelAndView updateProfile(@ModelAttribute SignUpModel signupModel,HttpServletRequest request, HttpServletResponse response) {
	userdaoimp.UpdateProfile(signupModel);
	HttpSession session = request.getSession(false);
	String userid;
	userid = (String) session.getAttribute("userid");
	if (userid != null) {
		ModelAndView mav = new ModelAndView("userProfile");
		SignUpModel record=userdaoimp.user_Record(Integer.parseInt(userid));
		mav.addObject("rec",record);
		List<AddDeparmentModel> dep_list = adminDaoImp.getDeparments();
		mav.addObject("dep_list", dep_list);

		return mav;
	} else {
		return employee_login();
	}
	}
	@GetMapping("/userLogOut")
	public ModelAndView userLogout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		String userid;
		userid = (String) session.getAttribute("userid");
		if (userid != null) {
					session.removeAttribute("userid");
			session.invalidate();
			return employee_login();
			}
		return employee_login();
	}

	}
