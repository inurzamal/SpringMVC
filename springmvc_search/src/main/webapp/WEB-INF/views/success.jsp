<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page isELIgnored="false" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>success</title>
</head>
<body leftmargin="60px" topmargin="70px">

<large>${student}</large>

<hr>

<p> Student Name: ${student.name }</p>
<p> Student Email: ${student.email}</p>
<p> Student Address: ${student.address }</p>
<p> Student Courses: ${student.courses }</p>

<hr width="50%" align="left">

<p> Student Name: ${student.name }</p>
<p> Student Email: ${student.email}</p>
<p> Student City: ${student.address.city }</p>
<p> Courses taken: ${student.courses }</p>

</body>
</html>