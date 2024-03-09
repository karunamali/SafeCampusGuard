<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meat charset="UTF-8">
<title>Welcome Form</title>
<link rel="stylesheet" type="text/css" href="form_style.css">
</head>
<body>
    <%
        // Retrieve the session object
        HttpSession mysession = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (mysession != null && mysession.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) mysession.getAttribute("username");
    %>

      <div class="container">
        <h1>Welcome, <%= username %>!</h1>
        <p>We're delighted to have you on our platform. &#127775</p>
        <h3>Explore, learn, and connect with our vibrant community! &#128640</h3>
        <p>Feel free to stay as long as you like, and when you're ready,</p> 
        you can <a href="logout.jsp">LOGOUT</a> securely.
    </div>

    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>


</body>
</html>