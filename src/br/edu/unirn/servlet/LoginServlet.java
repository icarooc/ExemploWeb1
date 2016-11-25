package br.edu.unirn.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unirn.dominio.Usuario;

@WebServlet("/logar")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		
		if (login.equals("icaro") && senha.equals("")){
			Usuario u = new Usuario();
			u.setNome(login);
			
			req.getSession().setAttribute("usuario", u);
			resp.sendRedirect("/ExemploWeb1/tela2.jsp");
		} else {
			resp.sendRedirect("/ExemploWeb1/login.jsp");
		}
	}
	
	

}
