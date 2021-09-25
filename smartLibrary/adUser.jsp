<%@page import="com.admin.adUser"%>
<%@page import="com.admin.adViewModerator"%>

<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.adViewModerator"%>


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

<title>Admin's User Page</title>
<style>
.container {
	display: flex;
	justify-content: space-between;
}
.blockeduser{
display:flex;
flex-direction:column;
}
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
    <button class="btn btn-outline-success me-2" type="button"><a href="index.jsp">HOME</a></button>
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
	<br>

	<div class="container">

		<div class="user">
			<!-- this section is used for showing the list of Users from (adUser.java)  -->
			 <div class="d-flex justify-content-center">

			<h1>:USER:</h1>
		</div>
	<table class="table">
			
  <thead class="table-light">
    <tr>
        <th>ID</th>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
        <th>Date</th>
        <th></th>
      </tr>
  </thead>

			<%!int id;
	String firstname, lastname, email, date;%>

			<%
			ResultSet set = adUser.viewUser();
			while (set.next()) {

				id = set.getInt("uId");
				firstname = set.getString("uFirstName");
				lastname = set.getString("uLastName");
				email = set.getString("uEmail");
				date = set.getString("uTime");
			%>
<tbody>
		
<tr>
        <td><%=id%></td>
        <td><%=firstname%></td>
        <td><%=lastname%></td>
        <td><%=email%></td>
        <td><%=date%></td>
        <td><a href='adBlockUser?userEmail=<%=email%>'><button  class="btn btn-outline-danger text-dark">Block User</button></a></td>
			
		</tr>	
			<%
			}
			%>
      

			<!-- this section is used for send the fetched data to (adBlockUser.java) -->
			</tbody>
			</table>
		</div>
		
		
		<div class="blockeduser">
		 <div class="d-flex justify-content-center">

			<h1>:BLOCKED USER:</h1>
			
			
		</div> 
			<table class="table">
			
  <thead class="table-light">
    <tr>
       
        <th>Email</th>
        <th>Date</th>
        <th></th>
      </tr>
  </thead>
			<%!String bemail, bdate;%>
			<%
			ResultSet set2 = adUser.viewBlockUser();
			while (set2.next()) {
				bemail = set2.getString("bEmail");
				bdate = set2.getString("bDate");
			%>
			
			<tbody>
			<tr>
			<%-- <%="BLOCKED USER  :"+ bemail +":"+ bdate%> --%>
			<td><%=bemail%></td>
			<td><%=bdate%></td>
			<td>
			<a href='adBlockUser?bEmail=<%=bemail%>'><button  class="btn btn-outline-success text-dark">UNBLOCK</button></a>
			</td>
			</tr>
			</tbody>
			
			<%
			}
			%>


		</div>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
	
</body>


</html>