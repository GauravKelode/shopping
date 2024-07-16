<%@page import="test.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Profile</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.profile-card {
    width: 300px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    background-color: #fff;
    text-align: center;
}

.profile-card h3 {
    margin-top: 0;
    color: #007bff;
}

.profile-info {
    margin-bottom: 20px;
}

.profile-info p {
    margin: 5px 0;
}

.profile-actions {
    margin-top: 20px;
}

.profile-actions a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.profile-actions a:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<%
	CustomerBean cb = (CustomerBean)session.getAttribute("cbean");
%>
    <div class="container">
        <div class="profile-card">
            <h3>Customer Profile</h3>
            <div class="profile-info">
                <p><strong>First Name:</strong> <%=cb.getfName()%></p>
                <p><strong>Last Name:</strong> <%=cb.getlName()%></p>
                <p><strong>Address:</strong> <%=cb.getAddrs() %></p>
                <p><strong>Mail Id:</strong> <%=cb.getMid()%></p>
                <p><strong>Phone No:</strong> <%=cb.getPhno() %></p>
            </div>
            <div class="profile-actions">
                <a href="Customer.jsp">Back</a>
            </div>
        </div>
    </div>
</body>
</html>
