package com.moderator;

import java.sql.Connection;
import java.sql.ResultSet;

import com.utilities.Connector;
public class mod {
	private String firstName;
	private String lastName;
	private String Email;
	public mod() {
		
	}
	public mod(String firstName,String lastName, String Email) {
		this.Email = Email;
		this.firstName = firstName;
		this.lastName = lastName;
	}
	public String getEmail() {
		return Email;
	}
	public String getFirstName() {
		return firstName;
	}
	public String getLastName() {
		return lastName;
	}
	//find id of moderator
    public int getId(String email) {
    	int id=0;
    	Connection connection = Connector.getConnect();
    	try {
			String quray = "select mId from moderator where mEmail='"+email+"'";
			ResultSet rst = connection.createStatement().executeQuery(quray);
			while (rst.next()) {
			 id = rst.getInt("mId");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	return id;
	}
  //fetch details of moderator
    public mod getMod(String id) {
       	 String email="";
		 String fname="";
		 String lname="";
		 mod moderator = null;
    	Connection connection = Connector.getConnect();
    	try {
			String quray = "select mEmail,mFirstName,mLastName from moderator where mId="+id;
			ResultSet rst = connection.createStatement().executeQuery(quray);
			while (rst.next()) {
			  email = rst.getString("mEmail");
			  fname = rst.getString("mFirstName");
			  lname = rst.getString("mLastName");
			}
			moderator = new mod(fname, lname, email);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return moderator;
    	
	}
}


