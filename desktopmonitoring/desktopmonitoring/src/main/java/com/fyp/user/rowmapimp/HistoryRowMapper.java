package com.fyp.user.rowmapimp;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.fyp.user.models.HistoryModel;

public class HistoryRowMapper implements RowMapper<HistoryModel> {

	@Override
	public HistoryModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			HistoryModel obj=new HistoryModel();
			obj.setDate(rs.getString("date"));
			obj.setNonWok(rs.getInt("nonwork"));
			obj.setWork(rs.getInt("work"));
		return obj;
	}

}
