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
