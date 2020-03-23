package com.fyp.admin.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.fyp.admin.models.LoginModel;

public class LoginRowMapper implements RowMapper<LoginModel> {

	@Override
	public LoginModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		LoginModel loginModel=new LoginModel();
		loginModel.setAdminid(rs.getInt("manager_id"));
		loginModel.setUsername(rs.getString("manager_name"));;
		return loginModel;
	}

}
