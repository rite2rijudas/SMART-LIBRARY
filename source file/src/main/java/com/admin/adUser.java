package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class adUser {
	
	
	public static ResultSet set;
	public static ResultSet set1;
	public static ResultSet viewUser()throws SQLException {
		
		
		Connection con=connectSql.getConnection();
		String q="select * from user";
		Statement st=con.createStatement();
		 set=st.executeQuery(q);
		
		 return set;
		
	}
	public static ResultSet viewBlockUser() throws SQLException {
		
		Connection con2=connectSql.getConnection();
		String q1="select * from blocked_user";
		Statement st1=con2.createStatement();
		set1=st1.executeQuery(q1);
		return set1;
		
	}

}
