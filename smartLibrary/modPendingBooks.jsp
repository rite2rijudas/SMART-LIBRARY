<%@page import="java.sql.ResultSet"%>
<%@page import="com.moderator.moderatorBook"%>
<%@page import="com.moderator.moderatorBook"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Moderator Pending Book Page</title>
<style>
.container
{


}
</style>
</head>
<body>
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
				category=set.getString("category");
				status = set.getString("status");
			%>

			<%=bid + " : " + bname + " : " + aname + " : " + pname + ":"+e+": " + status + ": Date  :" + time%>


			<!-- this section is used for send the fetched data to (moderatorBook.java) -->
			<%="<a href='moderatorBook?bId=" + bid + "&bookname="+bname+"' ><button>Delete Pending Book</button></a>"%>
			<%="<a href='moderatorBook?bookname=" + bname + "' ><button>View Pending Book</button></a>"%>
			
			<%="<a href='modModifyPendingBook.jsp?bookname=" + bname + "&bId="+bid+"&authorname="+aname+"&publishername="+pname+"&editionname="+e+"&categoryname="+category+"' ><button>Modify</button></a>"%>
			</div>
			<br>
			<br>
			<%
			}
			%>
			
</body>
</html>