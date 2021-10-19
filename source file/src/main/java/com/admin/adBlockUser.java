package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adBlockUser")
public class adBlockUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("userEmail");
		String bemail=request.getParameter("bEmail");
		String date=new Date().toString();
		Connection con=connectSql.getConnection();
		
		
		try {
			
			if (bemail == null) {
				
			//add the user to the block_user database
			String add="insert into blocked_user(bEmail,bDate) value(?,?)";
			PreparedStatement ps=con.prepareStatement(add);
			ps.setString(1, email);
			ps.setString(2, date);
			ps.executeUpdate();
			
			//delete the user from user database
			String delete="delete from user where uEmail=?";
			 ps=con.prepareStatement(delete);
			ps.setString(1, email);
			ps.executeUpdate();
			
			out.println("<h1>Blocked User :: "+email);
			}
			else {
				
				String remove="delete from blocked_user where bEmail=?";
				PreparedStatement ps2=con.prepareStatement(remove);
				ps2.setString(1,bemail);
				ps2.executeUpdate();
				out.println("<h1>unblocked....");
				
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
				
		
	
		
		
	}

}