<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Management</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0; 
        padding: 20px; 
    }

    .message {
        background-color: #ffc107;
        color: #333;
        padding: 10px; 
        margin-bottom: 20px; 
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
  
    <!-- Message -->
    <div class="message">
        <% String msg = (String)request.getAttribute("msg"); out.println(msg); %>
    </div>

    <!-- Links -->
    <a href="cview">View Product</a>
    <a href="clogout">Logout</a>
    <a href="home.html">Home</a>
</body>
</html>
