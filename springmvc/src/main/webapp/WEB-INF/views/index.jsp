<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@ page import="java.util.List" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h2>My First Spring MVC WebApp</h2>
<p>This page is supplied by controller at url /ProjectName which is springmvc here </p>

<ul>
  <li><a class="active" href="/springmvc">Home</a></li>
  <li><a href="/springmvc/about">About Us</a></li>
  <li><a href="/springmvc/help">Help</a></li>
  <li><a href="/springmvc/contact">Contact Us</a></li>
</ul>


<%
	String name1 = (String)request.getAttribute("name");
	Integer id = (Integer)request.getAttribute("id");
	
	List<String> friends = (List) request.getAttribute("f");
%>

<h3>Hello, I'm <%= name1 %> </h3>
<h3>This is my ID <%= id %> </h3>

<%
	for(String s: friends)
	{
%>
		<h3><%= s%> </h3>
<%	
	}
%>
</body>
</html>