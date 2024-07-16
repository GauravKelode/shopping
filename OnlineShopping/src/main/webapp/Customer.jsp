<%@page import="test.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
            background-color: #f4f4f4;
            background-image: url('https://static.vecteezy.com/system/resources/previews/007/068/286/non_2x/background-for-website-or-mobile-app-online-shopping-with-3d-smartphone-on-blue-background-free-vector.jpg'); /* Replace with your background image URL */
            background-size: cover;
            font-family: Arial, sans-serif;
        }
        
        h1
        {
        	color:white;
        }
       
            div {
            width: 50%;
            margin: 100px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.756);
            text-align: center;
        }
a {
    display: inline-block;
    padding: 10px 20px;
    margin-right: 10px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s;
  }

  a:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
	<%
		CustomerBean cb = (CustomerBean)session.getAttribute("cbean");
		//out.println("Welcome Customer :"+cb.getfName()+"<br>");
	%>
	<div>
	<h1>Welcome ,<%=cb.getfName() %>!</h1><br>
	<a href="viewprofile">View Profile</a>
	<a href="cview">View Product</a>
	<a href="clogout">Logout</a>
	</div>
</body>
</html>