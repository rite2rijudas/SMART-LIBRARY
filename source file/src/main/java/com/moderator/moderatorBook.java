package com.moderator;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.admin.connectSql;








@WebServlet("/moderatorBook")
@MultipartConfig
//(
//	fileSizeThreshold = 1024 * 1024 * 1,  //1mb
//			maxFileSize = 1024 * 1024 * 10, //10mb
//			maxRequestSize = 1024 * 1024 * 100 //100mb
//)

public class moderatorBook extends HttpServlet 
{

   public String bname;
   public String bauthorname;
   public String bpublishername;
   public String bedition;
   public String bcategory;
   public String bdate;
   public static ResultSet set;
   
   String path="E:\\smartLibrary\\BOOKS\\";
   
   static Connection con=connectSql.getConnection();
   
 

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		bname =request.getParameter("bookname");
		bauthorname=request.getParameter("authorname");
		bpublishername=request.getParameter("publishername");
		bedition=request.getParameter("editionname");
		bcategory=request.getParameter("categoryname");
		 bdate=new Date().toString();				
		String action=request.getParameter("value");
		
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		
		
		try 
		{
			
			
			if (action.equals("addbook")) 
				
			{
				
				Part filePart= request.getPart("file");

				
			String fileName= bname+".pdf";
			
				filePart.write(path + fileName);
				addbook(fileName, bauthorname, bpublishername, bedition, bcategory, bdate, path);
				out.println(" <h1>BOOK ADDED SUCCESSFULLY.....");
			}
			
			else if (action.equals("modifybook")) 
				
			{
				int bookid=Integer.parseInt(request.getParameter("bId"));
				modifyBook(bname, bauthorname, bpublishername, bedition, bcategory, bookid);
				 out.println("<h1>Book Updated...");
			}
			
		else 
			{
			int bid=Integer.parseInt(request.getParameter("bId"));
			String oldname;
			
			ResultSet set=viewPendingBook();
			
			while(set.next()) 
			 {
				int bookid=set.getInt("bId");
				if (bookid==bid) 
				{
					oldname=set.getString("bName");
			    	File f=new File(path+oldname);
			        boolean renamed=f.renameTo(new File(path+bname));
			
			        if (renamed) 
			         {
				        modifyPendingBook(bname, bauthorname, bpublishername, bedition, bcategory, bid);
				        out.println("<h1>Pending Book Updated...");
			         }
				}
			     	
			 }
			}
			
			
		} catch (Exception e) {
			
			System.out.println(e);
		}
		
		
	}

   
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		
	    String bname=req.getParameter("bookname");
	    out.println(bname);
//	    String action=req.getParameter("value");
	    String delete=req.getParameter("bId");
		
		try 
		{
			if (delete ==null) 
			{
			
			  openBook(path, bname);
			  out.println("<h1>BOOK VIEWING....");
			}
			
			else 
			{
				int bid=Integer.parseInt(delete);
				deletebook(bid,bname,path);
				out.println(" <h1>BOOK UPLOAD CANCELLED SUCCESSFULLY.....");
			
			}
			
		} 
		catch (Exception e) 
		{
			
			System.out.println(e);
		}
			
	}
	
public void addbook(String bn,String ba,String bp,String be,String bc,String bd,String bpa) throws SQLException 
{
	
	String add="insert into pending_books(bName,authorName,publisherName,edition,category,bTime,location) value(?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(add);
	ps.setString(1,bn );
	ps.setString(2,ba );
	ps.setString(3,bp );
	ps.setString(4,be );
	ps.setString(5,bc );
	ps.setString(6,bd );
	ps.setString(7,bpa );

//	ps.executeUpdate();
	ps.execute();
}


public static void deletebook(int bi,String bookname,String path) throws SQLException 
{
//	String namepath=path+bookname;
//	System.out.println(namepath);
	
	File f=new File(path+bookname);

	if (f.delete()) 
	{
	String delete="delete from pending_books where bId=?";
	PreparedStatement ps=con.prepareStatement(delete);
	ps.setInt(1,bi );
	ps.execute();
	System.out.println("file  deleted!!!!!!");	
	}
	else
	{
	   System.out.println("file not deleted!!!!!!");	
	}
	
}

public static void openBook(String path,String bookname) throws IOException 
{
	File file=new File(path+bookname);
	Desktop.getDesktop().open(file);
}
public static ResultSet  viewPendingBook() throws SQLException 
{
	String view="select * from pending_books";
	Statement st=con.createStatement();
	set=st.executeQuery(view);
	return set;
}

public void modifyPendingBook(String bname,String bauthorname,String bpublishername,String bedition,String bcategory,int id) throws SQLException 
{
	String q1="update pending_books set bName=?,authorName=?, publisherName=?, edition=?,category=? where bId=?";
	PreparedStatement ps=con.prepareStatement(q1);
	ps.setString(1, bname);
	ps.setString(2, bauthorname);
	ps.setString(3, bpublishername);
	ps.setString(4, bedition);
	ps.setString(5, bcategory);
	ps.setInt(6, id);
	 
	ps.executeUpdate();

}
public void modifyBook(String bname,String bauthorname,String bpublishername,String bedition,String bcategory,int id) throws SQLException 
{
	String q1="update books set bName=?,authorName=?, publisherName=?, edition=?,category=? where bId=?";
	PreparedStatement ps=con.prepareStatement(q1);
	ps.setString(1, bname);
	ps.setString(2, bauthorname);
	ps.setString(3, bpublishername);
	ps.setString(4, bedition);
	ps.setString(5, bcategory);
	ps.setInt(6, id);
	
	ps.executeUpdate();
	
}
	
	public static ResultSet viewBooks() throws SQLException 
	{
		String view="select * from books";
		Statement st=con.createStatement();
		set=st.executeQuery(view);
	    	
		return set;
	}



}
