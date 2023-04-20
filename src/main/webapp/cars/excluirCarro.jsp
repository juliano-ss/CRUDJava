<%-- 
    Document   : excluirCarro
    Created on : 20 de abr. de 2023, 11:28:32
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
    <br>
    <h2>Exclusão feita com sucesso: </h2>
    <h3>Para nova exclusão retorne a página.</h3>
    <a href="frmCarroView.html">Página incial:</a><br>
    <a href="listarCarros.jsp">Lista de carros:</a>
    
    

    <body>
        
        <%
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                CarroDAO carroDAO = new CarroDAO();
                carroDAO.excluir(id);
                
            } catch (Exception e) {
                
            }
        %>
    </body>
</html>
