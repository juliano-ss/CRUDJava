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
        <style>
            table {
              border: 1px solid black;
            }
        </style>
    </head>
    <body>

        <table border="1" >
            <tr>
                <th>Código</th>
                <th>Modelo</th>
                <th>Placa</th>
                <th>Ação</th>
            </tr>
            <%
                try {
                    CarroDAO carroDAO = new CarroDAO();
                    ArrayList<CarroDTO> list = carroDAO.listar();

                    for (int num = 0; num < list.size(); num++) {
                        out.print("<tr>");
                        out.print("<td>" + list.get(num).getId() + "</td>");
                        out.print("<td>" + list.get(num).getModelo() + "</td>");
                        out.print("<td>" + list.get(num).getPlaca() + "</td>");
                        out.print("<td><a href='frmExcluirCarro.jsp?id="
                                + list.get(num).getId() + "&modelo="
                                + list.get(num).getModelo() + "&placa="
                                + list.get(num).getPlaca()
                                + "'>Excluir</a></td>");
                        out.print("</tr>");
                    }

                } catch (Exception e) {
                }
            %>
        </table>

        
        
    </body>
</html>
