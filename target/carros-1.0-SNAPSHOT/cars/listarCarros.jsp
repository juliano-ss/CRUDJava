<%-- 
    Document   : listarCarros
    Created on : 18 de abr. de 2023, 13:03:22
    Author     : jotal
--%>



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
                 ArrayList<CarroDTO> list = carroDAO.listar();

                 for (int num = 0; num < list.size(); num ++) {
                     out.print("Código: " + list.get(num).getId() + "<br>");
                     out.print("Modelo: " + list.get(num).getModelo() + "<br>");
                     out.print("Placa: " + list.get(num).getPlaca() + "<br>");
                     
                     out.print("<a href=' frmExcluirCarro.jsp?id="
                     + list.get(num).getId() + "&nome="
                     + list.get(num).getModelo()
                     + list.get(num).getPlaca() + "'>Excluir </a>");
                     
                     
       %>   <br><br>     <%
                     
                 }

             } catch (Exception e) {
             }
   

        %>   
        
        
    </body>
</html>
