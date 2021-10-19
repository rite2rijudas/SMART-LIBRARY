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

<title>Moderator Book Modify</title>
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


			<div class="row mt-4">
			<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">The existing Book ID :</label>
				 <div class="col-sm-10">
				<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg"  name='bId' value= <%=bid%>>
				 </div>
			</div>
			
			<div class="row mt-4">
			<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter the Book  Name :</label>
				 <div class="col-sm-10">
				<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg"  name='bookname' value=<%=bname%>>
				 </div>
			</div>
			
			<div class="row mt-4">
			<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter the Book Author Name :</label>
				 <div class="col-sm-10">
				<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg"  name='authorname' value=<%=bauthorname%>>
				 </div>
			</div>
			
			<div class="row mt-4">
			<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter the Book Publisher Name:</label>
				 <div class="col-sm-10">
				<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg"  name='publishername' value=<%=bpublishername%>>
				 </div>
			</div>
			
			<div class="row mt-4">
			<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter the Book Edition:</label>
				 <div class="col-sm-10">
				<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg"  name='editionname' value=<%=bedition%>>
				 </div>
			</div>
			
			<div class="row mt-4">
			<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter the Book Category:</label>
				 <div class="col-sm-10">
				<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg"  name='categoryname' value=<%=bcategory%>>
				 </div>
			</div>
			
			<div class="d-grid gap-2 col-6 mx-auto my-4 ">
				<button type="submit" name="value" class="btn btn-outline-danger me-2 btn-primary btn-lg text-white" value="modifybook">MODIFY</button>
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