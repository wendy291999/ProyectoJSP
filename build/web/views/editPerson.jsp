<%-- 
    Document   : edit
    Created on : 05-oct-2020, 16:04:02
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
    
        <%@page import="model.Person,persistence.dao.impl.PersonDAO"%>  
        <jsp:useBean id="person" class="model.Person"></jsp:useBean>
        <jsp:setProperty property="*" name="person"></jsp:setProperty>
        <% 
            PersonDAO personDAO = new PersonDAO();
            personDAO.update(person);

            response.sendRedirect("list.jsp");
        %>
        <h1>Hello World!</h1>
    </body>
</html>
