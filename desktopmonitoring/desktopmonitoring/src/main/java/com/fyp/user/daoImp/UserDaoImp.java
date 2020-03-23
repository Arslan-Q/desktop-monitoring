package com.fyp.user.daoImp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.fyp.admin.models.AddDeparmentModel;
import com.fyp.admin.rowmapper.Getdeparments;
import com.fyp.user.dao.UserDao;
import com.fyp.user.models.HistoryModel;
import com.fyp.user.models.LoginModel;
import com.fyp.user.models.SignUpModel;
import com.fyp.user.rowmapimp.HistoryRowMapper;
import com.fyp.user.rowmapimp.UserRecordRowmapper;
@Component

public class UserDaoImp implements UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;  
	
	
	@Override
	public void signUp(SignUpModel signUp) {
		// TODO Auto-generated method stub
	String query="INSERT INTO `employee_record` (`employee_id`, `first_name`, `last_name`, `email`, `contact_no`,`passwrod`, `deparment_id`, `manager_id`,`status`) VALUES (NULL, '"+signUp.getFirst_name()+"', '"+signUp.getLast_name()+"','"+signUp.getEmail()+"','"+signUp.getContact_no()+"', '"+signUp.getUser_password()+"','"+signUp.getDepartment()+"',1,1)";
	jdbcTemplate.execute(query);
	}

	@Override
	public int login(LoginModel login) {
			String sql="SELECT Count(*) FROM `employee_record`where `email`=? and `passwrod`=?";
			return jdbcTemplate.queryForObject(sql,new Object[] {login.getUsername(),login.getPassword()} ,Integer.class);
	}

	@Override
	public void ScreenshotSave(String fileName,String date,String userid) {

		String sql="INSERT INTO `employees_images_record` (`employee_id`, `date`, `images`,`work`,`nonwork`) VALUES ('"+userid+"', '"+date+"', '"+fileName+"','1','1')";
		jdbcTemplate.execute(sql);
	}

	@Override
	public String getuserid(LoginModel login) {
		String sql="SELECT employee_id FROM `employee_record` where email='"+login.getUsername()+"' and passwrod='"+login.getPassword()+"'";
		String id=(String) jdbcTemplate.queryForObject(sql,String.class);
		return id;
	}

	@Override
	public List<AddDeparmentModel> Deplist() {
		String sql="SELECT * FROM `deparments`";
		List<AddDeparmentModel> depments=jdbcTemplate.query(sql,new Getdeparments()); 

		return depments;
	}

	@Override
	public int checkemail(String email) {
		// TODO Auto-generated method stub
		String sql="SELECT COUNT(email) FROM `employee_record` WHERE `email` = '"+email+"'";
		int val=(int) jdbcTemplate.queryForObject(sql,Integer.class);
		return val;
	}
@Override
	public SignUpModel user_Record(int id) {
		// TODO Auto-generated method stub
		String sql="SELECT employee_record.employee_id,employee_record.first_name,employee_record.last_name,employee_record.contact_no,employee_record.email,employee_record.passwrod,deparments.deparment_id FROM employee_record INNER JOIN deparments on employee_record.deparment_id=deparments.deparment_id WHERE employee_record.employee_id='"+id+"'";
        return jdbcTemplate.queryForObject(sql,new UserRecordRowmapper());
	}

@Override
public void UpdateProfile(SignUpModel updateProfile) {
String sql="UPDATE employee_record set first_name='"+updateProfile.getFirst_name()+"' ,last_name='"+updateProfile.getLast_name()+"' , contact_no='"+updateProfile.getContact_no()+"' , email='"+updateProfile.getEmail()+"' , deparment_id='"+updateProfile.getDepartment()+"' , passwrod='"+updateProfile.getUser_password()+"' WHERE employee_id='"+updateProfile.getId()+"'";
	System.out.println(sql);
jdbcTemplate.execute(sql);

	
}

@Override
public List<HistoryModel> History(int id) {
	String sql="SELECT date,SUM(work) as work,SUM(nonwork) as nonwork FROM `employees_images_record` GROUP by date ORDER BY  cast(date as datetime) DESC";
	return jdbcTemplate.query(sql,new HistoryRowMapper());
}

	

	
}
