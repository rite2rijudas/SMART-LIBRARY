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

<title>Admin Pending Book Verify</title>
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
    <button class="btn btn-outline-success me-2" type="button"><a href="adindex.jsp">HOME</a></button>
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

<div class="container" >

<%!int bid ,id;
	String bname, aname, pname,e, time,status,category;%>

			<%
			ResultSet set = moderatorBook.viewPendingBook();
			while (set.next()) 
			{

				bid = set.getInt("bId");
				bname = set.getString("bName");
				aname = set.getString("authorName");
				pname = set.getString("publisherName");
				e = set.getString("edition");
				time = set.getString("bTime");
				status = set.getString("status");
				category= set.getString("category");
				
			%>

			<%=bid + " : " + bname + " : " + aname + " : " + pname + ":"+e+":"+category+": " + status + ": Date  :" + time%>

            <!-- this section is used for send the fetched data to (adBookVerify.java) -->
			<%="<a href='adBookVerify?bookname=" + bname + "&bId="+bid+"&authorname="+aname+"&publishername="+pname+"&editionname="+e+"&categoryname="+category+"' ><button>Approve</button></a>"%>


			<!-- this section is used for send the fetched data to (moderatorBook.java) -->
			<%="<a href='moderatorBook?bookname=" + bname + "' ><button>View Pending Book</button></a>"%>
			<%="<a href='moderatorBook?bId=" + bid + "&bookname="+bname+"' ><button>Decline</button></a>"%>
			
			</div>
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