package com.fyp.admin.rowmapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.fyp.admin.models.ShowAllEmployeesModel;

public class ShowAlllEmployeeRowmapper implements RowMapper<ShowAllEmployeesModel> {

	@Override
	public ShowAllEmployeesModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub

    	ShowAllEmployeesModel employees = new  ShowAllEmployeesModel();
		employees.setId(rs.getInt("employee_id"));
		employees.setFirstname(rs.getString("first_name"));
    	employees.setLastname(rs.getString("last_name"));
    	employees.setEmail(rs.getString("email"));
        employees.setDepartment(rs.getString("deparment_name"));
        employees.setDate(rs.getString("date"));
        employees.setWork(rs.getInt("work"));
        employees.setNonwork(rs.getInt("nonwork"));
        return employees;
	}

}
