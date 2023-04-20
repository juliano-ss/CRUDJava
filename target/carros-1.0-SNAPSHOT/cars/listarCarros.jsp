<%-- 
    Document   : listarCarros
    Created on : 18 de abr. de 2023, 13:03:22
    Author     : jotal
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.DTO.CarroDTO"%>
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
                 List<CarroDTO> lista = carroDAO.listar();

                 for (int num = 0; num < lista.size(); num++) {
                     out.print("Código: " + lista.get(num).getId() + "</br");
                     out.print("Modelo: " + lista.get(num).getModelo() + "</br");
                     out.print("Placa: " + lista.get(num).getPlaca() + "</br");
                 }

             } catch (Exception e) {
             }
   

        %>   
        
        
    </body>
</html>
