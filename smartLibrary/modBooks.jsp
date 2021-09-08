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
  <div>
  AUTHOR NAME: <input type="text" name="authorname" placeholder="enter author name">
   </div>
  <div>
  PUBLISHER NAME: <input type="text" name="publishername" placeholder="enter publisher name">
   </div>
  <div>
  EDITION NAME: <input type="text" name="editionname" placeholder="enter edition name">
   </div>
  <div>
  CATEGORY NAME: <input type="text" name="categoryname" placeholder="enter category name">
   </div>
  
   <input type="file" name="file" multiple/>
   <button type="submit" name="value" value="addbook">ADD BOOK</button>
   </form>
</body>
</html>