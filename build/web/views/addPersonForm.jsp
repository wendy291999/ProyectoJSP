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
  
        <form action="addPerson.jsp" method="post">
            
            <label for="clave">Clave</label>
            <input type="text" name="id"/>
            
            <label for="name">Nombre</label>
            <input type="text" name="name"/>
            
            <label for="telephone">Telefono</label>
            <input type="text" name="telephone"/>
            
            <label for="address">Direccion</label>
            <input type="text" name="address"/>
            
            <input type="submit" value="Guardar"/>
        </form>


    </body>
</html>
