<%-- 
    Document   : frmExcluirCarro
    Created on : 19 de abr. de 2023, 23:36:15
    Author     : jotal
--%>

<%@page import="br.com.DAO.CarroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="frmExcluirCarro.jsp" method="POST" id="form-excluir" style="display:none">
            <label>Código do carro a ser excluído: </label><br>
            <input type="number" name="id"><br>
            <button type="submit">Alterar</button>
        </form>

    </body>
</html>
