package com.fyp.admin.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.fyp.admin.models.AddDeparmentModel;

public class Getdeparments implements RowMapper<AddDeparmentModel> {

	@Override
	public AddDeparmentModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		AddDeparmentModel dep=new AddDeparmentModel();
		dep.setDeparment_id(rs.getInt("deparment_id"));
		dep.setDeparment_name(rs.getString("deparment_name"));
		return dep;
	}

}
