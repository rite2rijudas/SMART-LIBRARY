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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Moderator Edit</title>
<style>
a {
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
							<button class="btn btn-outline-success me-2" type="button">
								<a href="adindex.jsp">HOME</a>
							</button>
							<button class="btn btn-outline-success me-2" type="button">
								<a href="">ABOUT</a>
							</button>
							<button class="btn btn-outline-success me-2" type="button">
								<a href="">CONTACT</a>
							</button>
						</form>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span> <i
								class="fas fa-user-circle nav-icon"></i> VIEW YOUR ACCOUNT
						</span> </a></li>

				</ul>
			</div>
		</nav>
		<!-- side nav -->



	</div>
	<br>
	<br>
	<br>
	<div class="container-fluid  text-dark ">
		<div class="container ">

			<%!int id;
	String id1, firstname, lastname, email, password;%>

			<%
			id1 = request.getParameter("moderatorId");
			firstname = request.getParameter("moderatorFirstName");
			lastname = request.getParameter("moderatorLastName");
			email = request.getParameter("moderatorEmail");
			password = request.getParameter("moderatorPassword");
			%>
			<div>
				<!-- this form submit to the (adEditModerator.java) -->

				<form action="adEditModerator" method="POST">


					<div class="row mt-4">
						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter
							the existing moderator ID :</label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-control-lg"
								id="colFormLabelLg" name="moderatorId" value=<%=id1%>>
						</div>

					</div>

					<div class="row mt-4">

						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter
							the moderator First Name :</label>
						<div class="col-sm-10">
							<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg" name='moderatorFirstName'
								value=<%=firstname%>>
						</div>
					</div>

					<div class="row mt-4">

						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter
							the moderator Last Name :</label>
						<div class="col-sm-10">
							<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg" name='moderatorLastName'
								value=<%=lastname%>>
						</div>
					</div>

					<div class="row mt-4">

						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter
							the moderator Email :</label>
						<div class="col-sm-10">
							<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg" name='moderatorEmail' value=<%=email%>>
						</div>
					</div>

					<div class="row mt-4">

						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Enter
							the moderator Password :</label>
						<div class="col-sm-10">
							<input type='text' class="form-control form-control-lg"
								id="colFormLabelLg" name='moderatorPassword'
								value=<%=password%>>
						</div>
					</div>

					<div class="d-grid gap-2 col-6 mx-auto my-4 ">

						<button type="submit" name="action"
							class="btn btn-outline-success me-2 btn-primary btn-lg text-white"
							value="update">UPDATE</button>

						<button type="submit" name="action"
							class="btn btn-primary btn-lg btn-outline-success me-2 text-white"
							value="delete">DELETE</button>
					</div>

					<!--	
				<button type="submit">Apply</button>
			 	UPDATE<input type="radio" name="action" value="update">
				DELETE<input type="radio" name="action" value="delete">
			 
			-->


				</form>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>

</body>
</html>