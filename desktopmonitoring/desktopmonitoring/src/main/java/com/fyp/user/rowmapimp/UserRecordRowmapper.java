package com.fyp.user.rowmapimp;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.fyp.user.models.SignUpModel;

public class UserRecordRowmapper implements RowMapper<SignUpModel> {

	@Override
	public SignUpModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		SignUpModel signUpModel=new SignUpModel();
		signUpModel.setId(rs.getInt("employee_id"));
		signUpModel.setDepartment(rs.getInt("deparment_id"));
		signUpModel.setContact_no(rs.getString("contact_no"));
		signUpModel.setFirst_name(rs.getString("first_name"));
		signUpModel.setLast_name(rs.getString("last_name"));
		signUpModel.setEmail(rs.getString("email"));
		signUpModel.setUser_password(rs.getString("passwrod"));
		return signUpModel;
	}

}
