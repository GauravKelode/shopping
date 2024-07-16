<%@page import="test.UserBean"%>
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
            background-image: url('https://t4.ftcdn.net/jpg/03/04/49/69/240_F_304496921_yQY4X6RtO7vhtvjmlY7gphM7C9U3LiLA.jpg'); /* Replace with your background image URL */
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
	UserBean ub  = (UserBean)session.getAttribute("ubean");

	//out.println("Welcome Admin :"+ub.getfName()+"<br>");
%>
<div>
<h1>Welcome ,<%=ub.getfName() %>!</h1><br>
<a href="addproduct.html">Add Product</a>
<a href="view">View All Product</a>
<a href="logout">Logout</a>
</div>
</body>
</html>