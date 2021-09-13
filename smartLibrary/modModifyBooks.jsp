<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
				<button type="submit" name="value" value="modifybook">MODIFY</button>
			</div>

			<!--	
				<button type="submit">Apply</button>
			 	UPDATE<input type="radio" name="action" value="update">
				DELETE<input type="radio" name="action" value="delete">
			 
			-->


		</form>
	</div>
</body>
</html>