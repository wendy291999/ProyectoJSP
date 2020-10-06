<%-- 
    Document   : add
    Created on : 05-oct-2020, 15:56:54
    Author     : wenkary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Persona</title>
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
        <form action="editPerson.jsp" method="post">
            
            <label for="clave">Clave</label>
            <input type="text" name="id" value="<%=person.getId()%>" readonly="readOnly"/>
            
            <label for="name">Nombre</label>
            <input type="text" name="name" value="<%=person.getName()%>"/>
            
            <label for="telephone">Telefono</label>
            <input type="text" name="telephone" value="<%=person.getTelephone()%>"/>
            
            <label for="address">Direccion</label>
            <input type="text" name="address" value="<%=person.getAddress()%>"/>
            
            <input type="submit" value="Guardar"/>
        </form>


    </body>
</html>
