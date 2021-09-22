<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>help</title>
	</head>
	<body>
	
	<h2>Help Section </h2>
	
	
	<p> ${h} </p> 
	<p> Case ID: ${case_id } </p>
	<p> Date Time: ${time} </p>
	<hr>
	
	<c:forEach var = "mycity" items = "${city}">
		<h4> ${mycity} </h4>
	</c:forEach>
	
	</body>
	</html>
