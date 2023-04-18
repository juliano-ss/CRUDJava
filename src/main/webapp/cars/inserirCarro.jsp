<%-- 
    Document   : inserirCarro
    Created on : 18 de abr. de 2023, 08:13:28
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
        
        <%
           try {
                  CarroDTO carroDTO = new CarroDTO();
                      carroDTO.setModelo(request.getParameter("modelo"));
                      carroDTO.setPlaca(request.getParameter("placa"));

                      CarroDAO carroDAO = new CarroDAO();
                      carroDAO.adicionar(carroDTO);
               } catch (Exception e) {
               }

        %>   
        
        </form>
    </body>
</html>
