<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%
        // Retrieve the session object
        HttpSession mysession = request.getSession(false);
   if(mysession != null){
	   mysession.invalidate();
   }
   response.sendRedirect("index.html");

        
       
    %>
    
       
</body>
</html>