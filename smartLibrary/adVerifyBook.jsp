<%@page import="java.sql.ResultSet"%>
<%@page import="com.moderator.moderatorBook"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
				status = set.getString("status");
				category= set.getString("category");
				
			%>

			<%=bid + " : " + bname + " : " + aname + " : " + pname + ":"+e+":"+category+": " + status + ": Date  :" + time%>

            <!-- this section is used for send the fetched data to (adBookVerify.java) -->
			<%="<a href='adBookVerify?bookname=" + bname + "&bId="+bid+"&authorname="+aname+"&publishername="+pname+"&editionname="+e+"&categoryname="+category+"' ><button>Approve</button></a>"%>


			<!-- this section is used for send the fetched data to (moderatorBook.java) -->
			<%="<a href='moderatorBook?bookname=" + bname + "' ><button>View Pending Book</button></a>"%>
			<%="<a href='moderatorBook?bId=" + bid + "&bookname="+bname+"' ><button>Decline</button></a>"%>
			
			</div>
			<br>
			<br>
			<%
			}
			%>
		

</body>
</html>