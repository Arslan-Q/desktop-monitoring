package com.fyp.admin.daoimp;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import com.fyp.admin.dao.Admindao;
import com.fyp.admin.models.AddDeparmentModel;
import com.fyp.admin.models.LoginModel;
import com.fyp.admin.models.ShowAllEmployeesModel;
import com.fyp.admin.rowmapper.Getdeparments;
import com.fyp.admin.rowmapper.LoginRowMapper;
import com.fyp.admin.rowmapper.ShowAlllEmployeeRowmapper;

@Component
public class AdminDaoImp implements Admindao {

	@Autowired
	JdbcTemplate jdbcTemplate; 
	
	@Override
	public List<LoginModel> adminlogin(LoginModel login) {
		String sql="SELECT * FROM `manager_record` where `manager_name`=? and `manager_password`=?";
		List<LoginModel> loginModel=jdbcTemplate.query(sql,new Object[] {login.getUsername(),login.getPass()} ,new LoginRowMapper());
		
		return loginModel;
	}

	@Override
	public void addDeparment(AddDeparmentModel addDeparment,int admin_id) {
		// TODO Auto-generated method stub
		String sql="INSERT INTO `deparments` ( `deparment_name`, `manager_id`) VALUES ('"+addDeparment.getDeparment_name()+"','"+admin_id+"')";
	jdbcTemplate.execute(sql);
		
	}

	public List<AddDeparmentModel> getDeparments() {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM `deparments`";
		List<AddDeparmentModel> depments=jdbcTemplate.query(sql,new Getdeparments()); 

		return depments;
	}

	@Override
	public int checkDep(String depname) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<ShowAllEmployeesModel> showAllEmployees() {
		DateTimeFormatter ptndate = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDateTime date = LocalDateTime.now();
		String imgdate = ptndate.format(date);

		String sql="SELECT employee_record.employee_id,employee_record.email,employee_record.first_name,employee_record.last_name,deparments.deparment_name,employees_images_record.date,SUM(employees_images_record.work) as work,SUM(employees_images_record.nonwork) as nonwork FROM ((employee_record inner JOIN employees_images_record on employee_record.employee_id=employees_images_record.employee_id) INNER JOIN deparments ON employee_record.deparment_id = deparments.deparment_id)WHERE employees_images_record.date='"+imgdate+"' GROUP BY employee_id";	
		return (ArrayList<ShowAllEmployeesModel>) jdbcTemplate.query(sql,new ShowAlllEmployeeRowmapper());
	}

	@Override
	public int onlinemember() {
String sql="select Count(status) from employee_record where status='1'";

		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	@Override
	public int offlinemember() {
		String sql="select Count(status) from employee_record where status='0'";

		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	@Override
	public List<ShowAllEmployeesModel> showEmployeeByDep(String name) {
		DateTimeFormatter ptndate = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDateTime date = LocalDateTime.now();
		String imgdate = ptndate.format(date);

		String sql="SELECT employee_record.employee_id,employee_record.email,employee_record.first_name,employee_record.last_name,deparments.deparment_name,employees_images_record.date,SUM(employees_images_record.work) as work,SUM(employees_images_record.nonwork) as nonwork FROM ((employee_record inner JOIN employees_images_record on employee_record.employee_id=employees_images_record.employee_id AND employees_images_record.date='"+imgdate+"') INNER JOIN deparments ON employee_record.deparment_id = deparments.deparment_id  And deparments.deparment_name=?)";
		return jdbcTemplate.query(sql, new Object[]{name},new ShowAlllEmployeeRowmapper());
	}

	@Override
	public List<ShowAllEmployeesModel> recordOfCurrentMonth(int id) {
		// TODO Auto-generated method stub
		LocalDate today = LocalDate.now();
		String sql="SELECT employee_record.employee_id,employee_record.email,employee_record.first_name,employee_record.last_name,deparments.deparment_name,employees_images_record.date,SUM(employees_images_record.work) as work,SUM(employees_images_record.nonwork) as nonwork FROM ((employee_record inner JOIN employees_images_record on employee_record.employee_id=employees_images_record.employee_id AND employees_images_record.date BETWEEN '"+today.withDayOfMonth(1)+"' AND '"+today.withDayOfMonth(today.lengthOfMonth())+"') INNER JOIN deparments ON employee_record.deparment_id = deparments.deparment_id) WHERE employee_record.employee_id='"+id+"' GROUP by employees_images_record.date";
		return jdbcTemplate.query(sql,new ShowAlllEmployeeRowmapper());
	}

	@Override
	public void dismissEmployee(int id) {
		String sql="Update employee_record set dismiss='1' where employee_id='"+id+"'";
		jdbcTemplate.execute(sql);
		
	}

	@Override
	public int checkDismiss(int id) {
		String sql="SELECT dismiss FROM `employee_record` WHERE employee_id='"+id+"'";
		return jdbcTemplate.queryForObject(sql, Integer.class);
		}

	
}
