<%@page import="java.sql.ResultSet"%>
<%@page import="com.moderator.moderatorBook"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Moderator Books</title>
</head>
<body>
   <form action="moderatorBook" method="post" enctype="multipart/form-data">
  <div>
  BOOK NAME: <input type="text" name="bookname" placeholder="enter book name">
   </div>
  <div>
  AUTHOR NAME: <input type="text" name="authorname" placeholder="enter author name">
   </div>
  <div>
  PUBLISHER NAME: <input type="text" name="publishername" placeholder="enter publisher name">
   </div>
  <div>
  EDITION NAME: <input type="text" name="editionname" placeholder="enter edition name">
   </div>
  <div>
  CATEGORY NAME: <input type="text" name="categoryname" placeholder="enter category name">
   </div>
  
   <input type="file"  accept=".pdf" name="file" multiple/>
   <button type="submit" name="value" value="addbook">ADD BOOK</button>
   </form>
   <br>
   <br>
   <br>
   
   <%!int id;
	String bname,bauthorname, bpublishername, bedition, bcategory,bdate;%>

	<%
	ResultSet set=moderatorBook.viewBooks();
	
	while (set.next()) {

		id = set.getInt("bId");
		bname = set.getString("bName");
		bauthorname = set.getString("authorname");
		bpublishername = set.getString("publishername");
		bedition = set.getString("edition");
		bcategory = set.getString("category");
		bdate = set.getString("bTime");
	%>

	<%=id + " : " + bname +" : "+ bauthorname+" : " + bpublishername + " : "+bcategory+" : Date of add/Approve :" + bdate%>


	<!-- this section is used for send the fetched data to (adEditModerator.jsp) -->
	<%="<a href='modModifyBooks.jsp?bookname=" + bname + "&bId="+id+"&authorname="+bauthorname+"&publishername="+bpublishername+"&editionname="+bedition+"&categoryname="+bcategory+"' ><button>MODIFY</button></a>"%>
	<br>
	<br>
	<%
	}
	%>
   
</body>
</html>