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

<title>Moderator Pending Books</title>
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

<%! String bid,bname,bauthorname,bpublishername,bedition,bcategory; %>

<%
	bname = request.getParameter("bookname");
	bauthorname = request.getParameter("authorname");
	bpublishername = request.getParameter("publishername");
	bedition = request.getParameter("editionname");
	bcategory = request.getParameter("categoryname");
	bid=request.getParameter("bId");
	%>
<div>
	<!-- this form submit to the (moderatorBook.java) -->
			
		<form action="moderatorBook" method="POST">


			<div>
				 The existing Book ID :
				<%="<input type='text' name='bId' value=" + bid + ">"%>
			</div>
			<div>
				Enter the Book  Name :
				<%="<input type='text' name='bookname' value=" + bname + ">"%>
			</div>
			<div>
				Enter the Book Author Name :
				<%="<input type='text' name='authorname' value=" + bauthorname + ">"%>
			</div>
			<div>
				Enter the Book Publisher Name:
				<%="<input type='text' name='publishername' value=" + bpublishername + ">"%>
			</div>
			<div>
				Enter the Book Edition:
				<%="<input type='text' name='editionname' value=" + bedition + ">"%>
			</div>
			<div>
				Enter the Book Category:
				<%="<input type='text' name='categoryname' value=" + bcategory + ">"%>
			</div>
			
			<div>
				<button type="submit" name="value" value="modify">MODIFY</button>
			</div>

			<!--	
				<button type="submit">Apply</button>
			 	UPDATE<input type="radio" name="action" value="update">
				DELETE<input type="radio" name="action" value="delete">
			 
			-->


		</form>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
	
</body>
</html>