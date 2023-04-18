<%-- 
    Document   : inserirCarro
    Created on : 18 de abr. de 2023, 08:13:28
    Author     : jotal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="inserirCarro.jsp" method="POST">
            
            <label>Modelo carro: </label></br>
            <input type="text" modelo="modelo"></br>
            <label>Placa carro: </label></br>
            <input type="text" placa="placa"></br>
            
            <button type="submit">CADASTRAR</button>
        </form>
    </body>
</html>
