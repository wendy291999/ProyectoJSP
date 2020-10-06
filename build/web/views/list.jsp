<%-- 
    Document   : list
    Created on : 05-oct-2020, 15:58:08
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
            PersonDAO personDAO = new PersonDAO();
            List<Person> persons = personDAO.getAll();
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>Clave</th>
                    <th>Nombre</th>
                    <th>Telefono</th>
                    <th>Direcciòn</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% for(Person person : persons) { %>
                <tr>
                    <td><%= person.getId() %></td>
                    <td><%= person.getName() %></td>
                    <td><%= person.getTelephone() %></td>
                    <td><%= person.getAddress() %></td>
                    <td>
                        <a href="find.jsp?id=<%=person.getId()%>">Ver detalles</a>
                        <a href="editPersonForm.jsp?id=<%=person.getId()%>">Editar</a>
                        <a href="delete.jsp?id=<%=person.getId()%>">Eliminar</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
