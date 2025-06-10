
package controller;

import model.Livro;
import model.LivroDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LivroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anoStr = request.getParameter("ano");
        String isbn = request.getParameter("isbn");

        if (titulo.isEmpty() || autor.isEmpty() || anoStr.isEmpty() || isbn.isEmpty() || !isbn.matches("\d{10}|\d{13}")) {
            request.setAttribute("erro", "Dados inválidos ou incompletos!");
            request.getRequestDispatcher("erro.jsp").forward(request, response);
            return;
        }

        int ano = Integer.parseInt(anoStr);
        Livro livro = new Livro(titulo, autor, ano, isbn);
        LivroDAO.adicionar(livro);

        response.sendRedirect("listar.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acao = request.getParameter("acao");
        if ("excluir".equals(acao)) {
            String isbn = request.getParameter("isbn");
            LivroDAO.removerPorIsbn(isbn);
        }
        response.sendRedirect("listar.jsp");
    }
}
