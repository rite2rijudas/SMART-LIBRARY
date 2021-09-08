<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Moderator Books</title>
</head>
<body>
   <form action="moderatorBook" method="post" enctype="multipart/form-data">
  <div>
  BOOK NAME: <input type="text" name="bookname" placeholder="enter book name">
   </div>
   <input type="file" name="file" multiple/>
   <input type="submit"/>
   </form>
</body>
</html>