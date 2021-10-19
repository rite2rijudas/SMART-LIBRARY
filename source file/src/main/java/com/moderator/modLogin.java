package com.moderator;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.admin.connectSql;
//import com.utilities.Connector;
@WebServlet("/modlogin")
public class modLogin extends HttpServlet
{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		String uname = req.getParameter("email");
		String pass = req.getParameter("password");
		boolean flag=false;
        mod m = new mod();
        int id= m.getId(uname);
        Connection connection = connectSql.getConnection();
		
		String quary = "select mEmail,mPassword,mFirstName from moderator";
		try 
		{
			ResultSet rst = connection.createStatement().executeQuery(quary);
			while (rst.next()) 
			{
				String user = rst.getString("mEmail");
				String password = rst.getString("mPassword");
				String name = rst.getString("mFirstName");
				
				if ((uname.equals(user)) && (pass.equals(password))) 
				{
					
					HttpSession session = req.getSession();
					session.setAttribute("name", name);
					
					resp.sendRedirect("modIndex.jsp?i="+id);
					flag=true;
					return;
				} 
				
				
			}
			if (flag==false) 
			{
				resp.sendRedirect("modlogin.jsp");
			}
				

			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
