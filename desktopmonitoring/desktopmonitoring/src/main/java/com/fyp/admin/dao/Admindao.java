package com.fyp.admin.dao;
import java.util.List;

import com.fyp.admin.models.AddDeparmentModel;
import com.fyp.admin.models.LoginModel;
import com.fyp.admin.models.ShowAllEmployeesModel;
public interface Admindao {
public List<LoginModel> adminlogin(LoginModel loginModel);
public void addDeparment(AddDeparmentModel addDeparment,int admin_id);
public List<AddDeparmentModel> getDeparments();
public int checkDep(String depname);
public List<ShowAllEmployeesModel> showAllEmployees();
public int onlinemember();
public int offlinemember();
public List<ShowAllEmployeesModel> showEmployeeByDep(String name);
public List <ShowAllEmployeesModel> recordOfCurrentMonth(int id);
public void dismissEmployee(int id);
public int checkDismiss(int id);
}
