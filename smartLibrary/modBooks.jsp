<%@page import="java.sql.ResultSet"%>
<%@page import="com.moderator.moderatorBook"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">

<!-- import font awesome  -->
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
      integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

<title>Moderator Books</title>
<style>

a
{
 text-decoration: none;
        color: white;
}
</style>
</head>
<body>

<div class="container-fluid  text-dark ">
		<nav class="navbar bg-dark  navbar-default fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href=""> <img
						src="./img/SMART LIBRARY.png" alt="" width="100" height="30"
						class="d-inline-block align-text-top"></a>
				</div>
				<ul class="nav navbar-nav navbar-right">
				<li>
				<form class="container-fluid ">
    <button class="btn btn-outline-success me-2" type="button"><a href="modIndex.jsp">HOME</a></button>
    <button class="btn btn-outline-success me-2" type="button"><a href="">ABOUT</a></button>
    <button class="btn btn-outline-success me-2" type="button"><a href="">CONTACT</a></button>
  </form></li>
  </ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span>  <i class="fas fa-user-circle nav-icon"></i>
      VIEW YOUR ACCOUNT</span>
							</a></li>

				</ul>
			</div>
		</nav>
		<!-- side nav -->
		
		
		
	</div>
	<br>
	<br>
	<br>

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
   
   <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
   
   
</body>
</html>