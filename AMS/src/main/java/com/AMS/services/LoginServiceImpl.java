package com.AMS.services;



//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import com.AMS.repository.StudentRepository;

@Service
public class LoginServiceImpl implements LoginService{

//	@Autowired
//	private StudentRepository repo;

	@Override
	public int loginRedirect(String email, String pass) {
		String Email=email;
		String Password=pass;
		
		if(Email.equalsIgnoreCase("superadmin@gmail.com") && Password.equals("superadmin"))
		{
			return 1;
		}
		else if(Email.equalsIgnoreCase("admin@gmail.com") && Password.equals("admin"))
		{
			return 2;
		}
		else if(Email.equalsIgnoreCase("hr@gmail.com") && Password.equals("hr"))
		{
			return 3;
		}
		else
		{
			return 4;
		}
		
	}
	
	

}
