package DAO;

import java.sql.Connection;
import java.lang.String;
import java.sql.SQLException;
import java.sql.Statement;
import java.lang.Exception;


import entities.ReservationObj;
import Utilities.MySQLConnect;
import java.util.ArrayList;
import java.sql.ResultSet;



public class ResDAO {

	
	private Connection con;
	public ResDAO()
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
	
	
	public boolean insert(ReservationObj res)
	{
		//Insert Command
		String query = "insert into reservation (name,date,stime,etime,seats,email) values ('"+res.getName()+"','"+res.getDate()+"','"+res.getStime()+"','"+res.getEtime()+"','"+res.getSeats()+"','"+res.getEmail()+"')";
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



	public ArrayList<ReservationObj> getAll()
	{
		ArrayList<ReservationObj> ReservationList=new ArrayList<ReservationObj>();
		String query= "select * from reservation";
		try 
		{
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next())
			{
				
				String name = rs.getString("name");
				String date = rs.getString("date");
				String stime = rs.getString("stime");
				String etime = rs.getString("etime");
				String seats = rs.getString("seats");
				String email = rs.getString("email");
				ReservationObj res = new ReservationObj();
				
				res.setName(name);
				res.setDate(date);
				res.setStime(stime);
				res.setEtime(etime);
				res.setSeats(seats);
				res.setEmail(email);
				ReservationList.add(res);
				
			}
			return ReservationList;
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
			return ReservationList;
		}
		
		
	}

}

