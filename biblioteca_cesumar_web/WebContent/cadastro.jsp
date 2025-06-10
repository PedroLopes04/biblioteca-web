
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head><title>Cadastro de Livro</title></head>
<body>
<h2>Cadastro de Livro</h2>
<form method="post" action="LivroServlet">
    Título: <input type="text" name="titulo"><br>
    Autor: <input type="text" name="autor"><br>
    Ano: <input type="text" name="ano"><br>
    ISBN: <input type="text" name="isbn"><br>
    <input type="submit" value="Cadastrar">
</form>
<a href="listar.jsp">Ver Livros</a>
</body>
</html>
