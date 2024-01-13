package DAO;

import java.sql.Connection;
import java.lang.String;
import java.sql.SQLException;
import java.sql.Statement;
import java.lang.Exception;
import entities.User;
import Utilities.MySQLConnect;



public class DAO {

	
	private Connection con;
	public DAO()
	{
		try 
		{
			con=MySQLConnect.connectDB();
		} 

		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	
	public boolean insert(User us)
	{
		//Insert Command
		String query = "insert into user(name,dob,gender,email,phone) values('"+us.getName()+"','"+us.getDob()+"','"+us.getGender()+"','"+us.getEmail()+"','"+us.getPhone()+"')";
		try 
		{
			Statement stmt= con.createStatement();
			int result = stmt.executeUpdate(query);
			if (result>0)
			{
				return true;
			}
			else
			{
				return false;
			}
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			return false;		
			
		}
	}

}
