<%@page import="com.admin.connectSql"%>

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
<title>Admin's Moderator Page</title>
<style>
.header {
	height: 100vh;
	width: 100%;
	background-color: black;
	color: white;
}
</style>
</head>
<body>
	<div class="container-fluid  text-dark full-width-div">
		<div class="d-flex justify-content-center">
			<h1>:MODERATOR:</h1>
		</div>

		<header>
			<div class="container ">


				<form action="adModeratorServlet" method="POST">


					<div class="row mt-4">
						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">First
							Name :</label>
						<div class="col-sm-10">
							<input type="text" name="moderatorFirstName"
								class="form-control form-control-lg" id="colFormLabelLg"
								placeholder="Enter first name">
						</div>
					</div>

					<div class="row mt-4">
						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Last
							Name :</label>
						<div class="col-sm-10">
							<input type="text" name="moderatorLastName"
								class="form-control form-control-lg" id="colFormLabelLg"
								placeholder="Enter last name">
						</div>
					</div>

					<div class="row mt-4">
						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Email :</label>
						<div class="col-sm-10">
							<input type="email" name="moderatorEmail"
								class="form-control form-control-lg" id="colFormLabelLg"
								placeholder="Enter email id">
						</div>
					</div>

					<div class="row mt-4">
						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Create
							Password :</label>
						<div class="col-sm-10">
							<input type="password" name="moderatorPassword"
								class="form-control form-control-lg" id="colFormLabelLg"
								placeholder="Enter your passoword">
						</div>
					</div>

					<div class="row mt-4">
						<label for="colFormLabelLg"
							class="col-sm-2 col-form-label col-form-label-lg">Re-enter
							Password :</label>
						<div class="col-sm-10">
							<input type="password" name="moderatorFinalPassword"
								class="form-control form-control-lg" id="colFormLabelLg"
								placeholder="Re-Enter your passoword">
						</div>
					</div>

					<div class="d-grid gap-2 col-6 mx-auto my-4">
						<button type="submit" value="addNewModerator"
							class=" btn-lg  btn-outline-success me-2">Add
							New Moderator</button>
					</div>

				</form>
			</div>
			</header>

			<br> <br>



			<div class="container ">

				<div class="row justify-content-evenly">
					<div class="col-1">ID</div>
					<div class="col-2">FIRST NAME</div>
					<div class="col-2">LAST NAME</div>
					<div class="col-2">EMAIL ID</div>
					<div class="col-4">DATE OF ADMIT</div>
				</div>
				<br>
				<!-- this section is used for showing the list of moderators from (adViewModerator.java)  -->
				<br>
				<%!int id;
	String firstname, lastname, email, password, date;%>

				<%
				ResultSet set = adViewModerator.view();

				while (set.next()) {

					id = set.getInt("mId");
					firstname = set.getString("mFirstName");
					lastname = set.getString("mLastName");
					email = set.getString("mEmail");
					password = set.getString("mPassword");
					date = set.getString("mTime");
				%>

				<div class="row justify-content-evenly">
					<div class="col-1">
						<%=id%>
					</div>
					<div class="col-2">
						<%=firstname%>
					</div>
					<div class="col-2">
						<%=lastname%>
					</div>
					<div class="col-2">
						<%=email%>
					</div>
					<div class="col-3">
						<%=date%>
					</div>
					<div class="col-1">

						<a
							href='adEditModerator.jsp?moderatorFirstName=" <%=firstname%> "&moderatorLastName=" <%=lastname%>
	"&moderatorId=" <%=id%> "&moderatorEmail=" <%=email%> "&moderatorPassword="  
		<%=password%> "'><button
								class=" btn  btn-outline-primary me-2">Edit</button></a>
					</div>
				</div>



				<!-- this section is used for send the fetched data to (adEditModerator.jsp) -->

				<br> <br>
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