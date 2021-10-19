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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Moderator Books</title>
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
								<a href="modIndex.jsp">HOME</a>
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

	<div class="container ">

		<form action="moderatorBook" method="post"
			enctype="multipart/form-data">
			<div class="row mt-4">
				<label for="colFormLabelLg"
					class="col-sm-2 col-form-label col-form-label-lg">BOOK
					NAME: </label>
				<div class="col-sm-10">
					<input type="text" name="bookname"
						class="form-control form-control-lg" id="colFormLabelLg"
						placeholder="enter book name">
				</div>
			</div>

			<div class="row mt-4">
				<label for="colFormLabelLg"
					class="col-sm-2 col-form-label col-form-label-lg">AUTHOR
					NAME:</label>
				<div class="col-sm-10">
					<input type="text" name="authorname"
						class="form-control form-control-lg" id="colFormLabelLg"
						placeholder="enter author name">
				</div>
			</div>

			<div class="row mt-4">
				<label for="colFormLabelLg"
					class="col-sm-2 col-form-label col-form-label-lg">
					PUBLISHER NAME: </label>
				<div class="col-sm-10">
					<input type="text" name="publishername"
						class="form-control form-control-lg" id="colFormLabelLg"
						placeholder="enter publisher name">
				</div>
			</div>

			<div class="row mt-4">
				<label for="colFormLabelLg"
					class="col-sm-2 col-form-label col-form-label-lg"> EDITION
					NAME:</label>
				<div class="col-sm-10">
					<input type="text" name="editionname"
						class="form-control form-control-lg" id="colFormLabelLg"
						placeholder="enter edition name">
				</div>
			</div>

			<div class="row mt-4">
				<label for="colFormLabelLg"
					class="col-sm-2 col-form-label col-form-label-lg">CATEGORY
					NAME: </label>
				<div class="col-sm-10">
					<input type="text" name="categoryname"
						class="form-control form-control-lg" id="colFormLabelLg"
						placeholder="enter category name">
				</div>
			</div>

			<div class="row mt-4">
			<div class="col-sm-12">
				<input type="file" accept=".pdf" class="form-control" id="inputGroupFile01" name="file" multiple />
				</div>
			</div>

			<div class="d-grid gap-2 col-6 mx-auto my-4">
				<button type="submit" class=" btn-lg  btn-outline-success me-2"
					name="value" value="addbook">ADD BOOK</button>
			</div>
		</form>
	</div>
	<br>
	<br>
	<br>


<table class="table table-borderless">
<thead>
  <tr>
        <th>ID</th>
        <th>Book Name</th>
        <th>Author Name</th>
        <th>Publisher Name</th>
        <th>Edition</th>
        <th>Category</th>
        <th>Date</th>
        <th></th>
      </tr>


	<%!int id;
	String bname, bauthorname, bpublishername, bedition, bcategory, bdate;%>

	<%
	ResultSet set = moderatorBook.viewBooks();

	while (set.next()) {

		id = set.getInt("bId");
		bname = set.getString("bName");
		bauthorname = set.getString("authorname");
		bpublishername = set.getString("publishername");
		bedition = set.getString("edition");
		bcategory = set.getString("category");
		bdate = set.getString("bTime");
	%>


<%-- 
	<%=id + " : " + bname + " : " + bauthorname + " : " + bpublishername + " : " + bcategory
		+ " : Date of add/Approve :" + bdate%> --%>


	<!-- this section is used for send the fetched data to (modModifyBooks.jsp) -->
	</thead>
	<tbody>
	<tr>
	<td><%=id%></td>
        <td><%=bname%></td>
        <td><%=bauthorname%></td>
        <td><%=bpublishername%></td>
        <td><%=bedition%></td>
        <td><%=bcategory%></td>
        <td><%=bdate%></td>

         <td><a href='modModifyBooks.jsp?bookname=<%=bname%>&bId=<%=id%>&authorname=<%=bauthorname%>&publishername=<%=bpublishername%>&editionname=<%=bedition%>&categoryname=<%=bcategory%>>'><button  class="btn btn-outline-info text-dark">Modify</button></a></td>
        </tr>
	</tbody>
	
	
	
	
	<%
	}
	%>
</table>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>


</body>
</html>