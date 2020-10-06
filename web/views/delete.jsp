<%-- 
    Document   : delete
    Created on : 05-oct-2020, 16:03:32
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
        <%@page import="model.Person,persistence.dao.impl.PersonDAO,java.util.List"%>
        <%
            Long id = Long.parseLong(request.getParameter("id"));
            Person personData = new Person();
            personData.setId(id);
            PersonDAO personDAO = new PersonDAO();
            personDAO.delete(personData);
            response.sendRedirect("list.jsp");  
        %>
        <h1>Hello World!</h1>
    </body>
</html>
