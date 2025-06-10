
<%@ page import="model.LivroDAO, model.Livro" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Lista de Livros</title></head>
<body>
<h2>Livros Cadastrados</h2>
<table border="1">
    <tr><th>Título</th><th>Autor</th><th>Ano</th><th>ISBN</th><th>Ação</th></tr>
    <%
        for (Livro livro : LivroDAO.listar()) {
    %>
        <tr>
            <td><%= livro.getTitulo() %></td>
            <td><%= livro.getAutor() %></td>
            <td><%= livro.getAno() %></td>
            <td><%= livro.getIsbn() %></td>
            <td><a href="LivroServlet?acao=excluir&isbn=<%= livro.getIsbn() %>">Excluir</a></td>
        </tr>
    <%
        }
    %>
</table>
<a href="cadastro.jsp">Cadastrar Novo Livro</a>
</body>
</html>
