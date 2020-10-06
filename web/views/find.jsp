<%-- 
    Document   : find
    Created on : 05-oct-2020, 16:04:14
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
        
        <% 
            Long id = Long.parseLong(request.getParameter("id"));
            PersonDAO personDAO = new PersonDAO();
            Person personData = new Person();
            personData.setId(id);
            Person person = personDAO.getOne(personData);
        %>
        <h1><%= person.getName()%></h1>
        <p>
        <ul>
            <li>Telefono: <%= person.getTelephone()%></li>
            <li>Direccion: <%= person.getAddress() %></li>
        </ul>
        </p>
    </body>
</html>
