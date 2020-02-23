package com.fyp.user.dao;
import java.util.List;

import com.fyp.admin.models.AddDeparmentModel;
import com.fyp.user.models.HistoryModel;
import com.fyp.user.models.LoginModel;
import com.fyp.user.models.SignUpModel;;
//UserDao Class
public interface UserDao{
//Public attributes
	public void signUp(SignUpModel signUp);
	public int login(LoginModel login);
	public String getuserid(LoginModel login);
    public void ScreenshotSave(String fileName,String date,String userid);
    public List<AddDeparmentModel> Deplist();
    public int checkemail(String email);
    public SignUpModel user_Record(int id);
    public void UpdateProfile(SignUpModel updateProfile);
    public List<HistoryModel> History(int id);

}
