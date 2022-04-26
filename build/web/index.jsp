<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 19:32:29
    Author     : Fatec
--%>

<%@page import="demo.Horario"%>
<%@page import="demo.DataBase"%>
<%@page import="demo.Contato"%>
<%@page import="demo.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    Data hoje;
    hoje = new Data();
    hoje.setDia(24);
    hoje.setMes(04);
    hoje.setAno(2022);
    
    Data amanha = new Data();
    amanha.setData(26, 4, 2022);
    
    Data nascimento = new Data(20, 1, 1998);
    
    Horario aula = new Horario(21, 24, 24);
    
    Horario intervalo = new Horario(21, 20, 15);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index POO</title>
    </head>
    <body>
        <h3>POO</h3>
        <h3>Index</h3>
        <h3>Lorena Vitória RA:1290482023021</h3>
        <h3>Claudinei Gomes RA:1290482213021</h3>
        <h3>Fernanda Fernandes RA:1290482023017</h3>
        <h3>Exemplos com Datas</h3>
        <div>Hoje é dia: <%= hoje.getDia()%></div>
        <div>Amanhã será: <%= amanha.getData()%></div>
        <div>Meu aniversário é: <%= nascimento.getAniversario()%> </div>
        <hr/>
        <h3>Exemplo de Listagem de Contatos</h3>
        <table border="1">
            <tr><th>Nome</th><th>Telefone</th><th>Nascimento</th></tr>
                <% for(Contato c: DataBase.getContatos()){ %>
            <tr>
                <td><%= c.getNome() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getNascimento().getAniversario() %></td>
            </tr>
            <%}%>
        </table>
        <hr/>
        <h3>Horario Atual</h3>
        <%= aula.getHorario()%>
        <h3>Horario Intervalo</h3>
        <%= intervalo.getHorario()%>
    </body>
</html>
