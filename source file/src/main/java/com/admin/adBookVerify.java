package com.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adBookVerify")
@MultipartConfig
(
	fileSizeThreshold = 1024 * 1024 * 1,  //1mb
			maxFileSize = 1024 * 1024 * 10, //10mb
			maxRequestSize = 1024 * 1024 * 1000 //1000mb
)
public class adBookVerify extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	String path="E:\\smartLibrary\\BOOKS\\adbooks\\";
	String path2="E:\\smartLibrary\\BOOKS\\";
	Connection con=connectSql.getConnection();
	
    
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String	bname =request.getParameter("bookname");
		String	bauthorname=request.getParameter("authorname");
		String	bpublishername=request.getParameter("publishername");
		String	bedition=request.getParameter("editionname");
		String	bcategory=request.getParameter("categoryname");
		String	 bdate=new Date().toString();				
//			String action=request.getParameter("value");
			int id=Integer.parseInt(request.getParameter("bId"));
			
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			
			
			try 
			{
				 File file= new File(path2+bname);
					boolean success=file.renameTo(new File(path+bname));
				if (success) 
			  {
					String delete="delete from pending_books where bId=?";
					PreparedStatement ps=con.prepareStatement(delete);
					ps.setInt(1,id );
					ps.execute();
				  out.println(" <h1>BOOK REMOVED FROM PENDING BOOKS.....");
			      addbook(bname, bauthorname, bpublishername, bedition, bcategory, bdate, path);
				  out.println(" <h1>BOOK APPROVED.....");	
				 
				}
				
			} 
			catch (Exception e) 
			{
				
				System.out.println(e);
			}
	}
	
	
	
	
	public void addbook(String bn,String ba,String bp,String be,String bc,String bd,String bpa) throws SQLException 
	{
		
		String add="insert into books(bName,authorName,publisherName,edition,category,bTime,location) value(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(add);
		ps.setString(1,bn );
		ps.setString(2,ba );
		ps.setString(3,bp );
		ps.setString(4,be );
		ps.setString(5,bc );
		ps.setString(6,bd );
		ps.setString(7,bpa );

//		ps.executeUpdate();
		ps.execute();
	}
	

}
