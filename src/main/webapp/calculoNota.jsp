<%-- 
    Document   : calculoNota
    Created on : 15-ene-2021, 21:05:30
    Author     : David Rebato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #aprobado {
                color: green;
            }
            
            #suspenso {
                color: red;
            }
        </style>
    </head>
    <body>
        <h1>Cálculo de la nota media</h1>
        <% 
        int nota1 = Integer.parseInt(request.getParameter("nota1")); 
        int nota2 = Integer.parseInt(request.getParameter("nota2"));
        int nota3 = Integer.parseInt(request.getParameter("nota3"));
        int notamedia = (nota1+nota2+nota3)/3;
        String nombre = request.getParameter("nombre");
        if (notamedia>=5){
        %>
        <h2 id="aprobado">Aprobado</h2>
        <% } else { %>
        <h2 id="suspenso">Suspenso</h2>
        <% } %>
        <p>El alumno: <%= nombre %> tiene una nota media de <%= notamedia %></p>
    </body>
</html>
