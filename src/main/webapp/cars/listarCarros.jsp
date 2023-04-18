<%-- 
    Document   : listarCarros
    Created on : 18 de abr. de 2023, 13:03:22
    Author     : jotal
--%>

<%@page import="java.util.ArrayList"%>
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
              CarroDAO carroDAO = new CarroDAO();
              ArrayList<CarroDTO> lista = carroDAO.listar();
              
             } catch (Exception e) {
             }
   

        %>   
        
        
    </body>
</html>
