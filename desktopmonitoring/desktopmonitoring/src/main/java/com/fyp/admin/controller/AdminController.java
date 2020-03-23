package com.fyp.admin.controller;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.fyp.admin.daoimp.AdminDaoImp;
import com.fyp.admin.models.AddDeparmentModel;
import com.fyp.admin.models.LoginModel;
import com.fyp.admin.models.ShowAllEmployeesModel;

@Controller
public class AdminController {
	@Autowired
	AdminDaoImp adminDaoImp;
	@Autowired
    private JavaMailSender javaMailSender;

	@GetMapping("/admin")
	public ModelAndView employee_login() {
		ModelAndView object = new ModelAndView("admin_login");
		return object;
	}

	@PostMapping("/DashBoard")
	public ModelAndView adminloginProcess(@ModelAttribute LoginModel login, HttpServletRequest request,
			HttpServletResponse response) {
		List<LoginModel> loginmodel = adminDaoImp.adminlogin(login);
		if (loginmodel.size() > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("admin_id", loginmodel.get(0).getAdminid());

			ModelAndView mav = new ModelAndView("admin_panal");
			List<AddDeparmentModel> dep_list = adminDaoImp.getDeparments();
			mav.addObject("admin_name", loginmodel.get(0).getUsername());
			int onlinemember=adminDaoImp.onlinemember();
			mav.addObject("onlinemember",onlinemember);
			
			mav.addObject("deparment_name", "overview");
			mav.addObject("dep_list", dep_list);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin_login");
			mav.addObject("msg", "Username or Password Wrong");
			return mav;
		}

	}

	@PostMapping("/add_Deparment")
	public ModelAndView addDeparment(@ModelAttribute AddDeparmentModel deparment, HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		int admin_id;
		if (session != null) {
			admin_id = (int) session.getAttribute("admin_id");
			adminDaoImp.addDeparment(deparment, admin_id);
			ModelAndView mav = new ModelAndView("addDepartment");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("addDepartment");
			return mav;

		}
	}

	@GetMapping("/DashBoard")
	public ModelAndView Home() {

		ModelAndView mav = new ModelAndView("admin_panal");
		List<AddDeparmentModel> dep_list = adminDaoImp.getDeparments();
		int onlinemember=adminDaoImp.onlinemember();
		mav.addObject("onlinemember",onlinemember );

		int offlinemember=adminDaoImp.offlinemember();
		mav.addObject("offlinemember",offlinemember );

		mav.addObject("dep_list", dep_list);
		ArrayList<ShowAllEmployeesModel> list= adminDaoImp.showAllEmployees();
		mav.addObject("employesslist",list );

		return mav;
	}

	@RequestMapping(value = "/checkDepExist", method = RequestMethod.GET)
	public @ResponseBody

			String checkDepExist(String Deptname) {
		int dep = adminDaoImp.checkDep(Deptname);
		if (dep > 1) {
			String msgdepexsist = "<h3 color='red'>Department already Exsist</h3>";
			return msgdepexsist;
		} else {
			String msgdepexsist = "<h3 color='red'>Department already Exsist</h3>";
			return msgdepexsist;

		}
	}

	@GetMapping("/addDepartmentProcess")
	public ModelAndView addDepartmentProcess() {
		ModelAndView mav = new ModelAndView("addDepartment");
		return mav;
	}

	@GetMapping("/showAllEmployees")
	public ModelAndView showAllEmployees(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		if (session != null) {
		ArrayList<ShowAllEmployeesModel> list= adminDaoImp.showAllEmployees();
			ModelAndView mav=new ModelAndView("ShowallEmployee");
			mav.addObject("employesslist",list );
			List<AddDeparmentModel> dep_list = adminDaoImp.getDeparments();
			mav.addObject("dep_list", dep_list);

			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin_login");
			return mav;
		}

	}
	@GetMapping("/employees_Of_Department")
public ModelAndView showEmployeeOfDep(@RequestParam(value="name", required=true) String name) {
		ModelAndView mav=new ModelAndView("ShowEmployeeBydep");		
		ArrayList<ShowAllEmployeesModel>list=(ArrayList<ShowAllEmployeesModel>) adminDaoImp.showEmployeeByDep(name);
		mav.addObject("employesslist",list );
		List<AddDeparmentModel> dep_list = adminDaoImp.getDeparments();
		mav.addObject("dep_list", dep_list);

		String view="Today Report";
		mav.addObject("msg",view);
		return mav;
	}
	@PostMapping("/sendEmail")
		void sendEmail(@RequestParam(value="email",required = true) String email) {
		System.out.println(email);
        SimpleMailMessage msg = new SimpleMailMessage();
        msg.setTo(email);

        msg.setSubject("Testing from Spring Boot");
        msg.setText("Hello World \n Spring Boot Email");

        javaMailSender.send(msg);

        
    }
	@GetMapping("/adminLogOut")
	public ModelAndView userLogOut() {
		
		ModelAndView mav=new ModelAndView("admin_login");
		return mav;
	}
	
	@GetMapping("/Record")
	public ModelAndView seacrhRecord(@RequestParam(value="id",required=true) int id) {	
		ModelAndView mav=new ModelAndView("EmployeeRecord");
		List<AddDeparmentModel> dep_list = adminDaoImp.getDeparments();
		mav.addObject("dep_list", dep_list);
		String view="Current Month";
		List<ShowAllEmployeesModel> list=adminDaoImp.recordOfCurrentMonth(id);
		mav.addObject("employesslist",list );
		mav.addObject("msg",view);
		mav.addObject("firstname",list.get(0).getFirstname());
		mav.addObject("lastname", list.get(0).getLastname());
		mav.addObject("email", list.get(0).getEmail());
		mav.addObject("id", list.get(0).getId());
		int btndismiss=adminDaoImp.checkDismiss(id);
		if(btndismiss==1) {
			mav.addObject("btnAction","Dismissed");
		}
		else {
		mav.addObject("btnAction","Dismiss");
		}
		return mav;
	}
}
