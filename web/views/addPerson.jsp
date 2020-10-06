<%-- 
    Document   : addPerson
    Created on : 06-oct-2020, 0:55:54
    Author     : wenkary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    
        <%@page import="model.Person,persistence.dao.impl.PersonDAO"%>  
        <jsp:useBean id="person" class="model.Person"></jsp:useBean>
        <jsp:setProperty property="*" name="person"></jsp:setProperty>
    <% 
        PersonDAO personDAO = new PersonDAO();
        personDAO.create(person);
        
        response.sendRedirect("list.jsp");
    %>
</html>
