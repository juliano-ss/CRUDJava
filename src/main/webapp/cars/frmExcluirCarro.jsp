<%-- 
    Document   : frmExcluirCarro
    Created on : 19 de abr. de 2023, 23:36:15
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
        
        <form action="excluirCarro.jsp" method="POST">

            <label>Código do carro: </label><br>
            <input type="text" name="id" value="<%=request.getParameter("id")%>"><br>
            <label>Modelo do carro: </label><br>
            <input type="text" name="modelo" value="<%=request.getParameter("modelo")%>"><br>
            <label>Placa do carro: </label><br>
            <input type="text" name="placa" value="<%=request.getParameter("placa")%>"><br>
           
            <button type="submit">Excluir</button>

        </form>
        
    </body>
</html>
