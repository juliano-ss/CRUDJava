<%-- 
    Document   : alterarCarro
    Created on : 20 de abr. de 2023, 00:20:46
    Author     : jotal
--%>

<%@page import="br.com.DAO.CarroDAO"%>
<%@page import="br.com.DTO.CarroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="alterarCarro.jsp" method="POST">
            
            <label>Código do carro: </label><br>
            <input type="text" name="id" value=" <%=request.getParameter("id")%> "><br>
            <label>Modelo do carro: </label><br>
            <input type="text" name="modelo" value=" <%=request.getParameter("modelo")%> "><br>
            <label>Placa do carro: </label><br>
            <input type="text" name="placa" value=" <%=request.getParameter("placa")%> "><br>
            <button type="submit">Alterar</button>
        </form>
        
        
    </body>
</html>
