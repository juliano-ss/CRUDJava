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
        
        <%

            try {
                int id = Integer.parseInt(request.getParameter("id"));
                String modelo = request.getParameter("modelo");
                String placa = request.getParameter("placa");

                CarroDTO carroDTO = new CarroDTO();
                carroDTO.setId(id);
                carroDTO.setModelo(modelo);
                carroDTO.setPlaca(placa);

                CarroDAO carroDAO = new CarroDAO();
                carroDAO.alterar(carroDTO);

                out.print("Carro alterado com sucesso!");
            } catch (Exception e) {
                out.print("Erro ao alterar carro: " + e.getMessage());
            }

        %>    
        
    </body>
</html>
