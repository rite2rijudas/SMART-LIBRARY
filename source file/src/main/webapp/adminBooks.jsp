<%@page import="com.admin.connectSql"%>
<%@page import="com.utilities.Connector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.utilities.Books"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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

<title>Admin Book Page</title>
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

	<section id="add-book">
		<form action="addbook" name="" id="add-book-form" method="post"
			enctype="multipart/form-data">
			<h3>Enter name</h3>
			<input type="text" name="book-name" id=""
				placeholder="Enter book name.." />
			<h3>Enter Author Name</h3>
			<input type="text" name="Author-name" id=""
				placeholder="Enter author name.." />
			<h3>Enter edition</h3>
			<input type="text" name="Edition-name" id=""
				placeholder="Enter Edition.." />
			<h3>Enter publisher</h3>
			<input type="text" name="publisher-name" id=""
				placeholder="Enter publisher name.." />
			<h3>Enter category</h3>
			<input type="text" name="Category" id="selectCat"
				placeholder="Enter Category name.." disabled onclick="disableFun2()"
				ondblclick="disableFun()" />

			<p>Choose an exsisting category:</p>
			<select name="new-Category" id="selectOpt" onclick="disableFun()"
				ondblclick="disableFun2()">

				<!--choose from existing category-->

				<option value="optStart" disabled selected>--Select
					Option--</option>
				<%
				Connection con = connectSql.getConnection();
				Books bk = new Books(con);
				ArrayList<String> list = bk.getAllCategory();
				for (String str : list) {
				%>
				<option value=<%=str%>><%=str%></option>
				<%
				}
				%>
			</select> <input type="file" accept=".pdf" name="fileInput">
			<button type="submit">Add</button>
		</form>
	</section>
	<section id="show-book">
		<div id="book-list">

			<!-- Display all books list -->

			<%
			ArrayList<Books> bookList = bk.getAllPosts();
			for (Books bklst : bookList) {
			%>

			<div id="number"><%=bklst.getbId()%></div>
			<div id="xyz"><%=bklst.getTime()%></div>
			<div id="book">
				<h3><%=bklst.getbName()%></h3>
			</div>
			<div id="author">
				<p><%=bklst.getAuthorName()%></p>
			</div>
			<div id="edition">
				<p><%=bklst.getEdition()%></p>
			</div>
			<div id="publication">
				<p><%=bklst.getPublisherName()%></p>
			</div>
			<div id="viewanddelete">
				<a href='viewBook.jsp?id=<%=bklst.getbId()%>'>view</a>
			</div>
			<%
			}
			%>
		</div>
	</section>

	<!-- Javascript functions to enable and disable -->

	<script type="text/javascript">
		function disableFun() {
			document.getElementById("selectCat").setAttribute("disabled", "");
			document.getElementById("selectOpt").removeAttribute("disabled");
			document.getElementById("selectCat").value = null;

		}
		function disableFun2() {
			document.getElementById("selectOpt").setAttribute("disabled", "");
			document.getElementById("selectCat").removeAttribute("disabled");
			document.getElementById("selectOpt").value = "optStart";
		}
	</script>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
	
</body>

</html>