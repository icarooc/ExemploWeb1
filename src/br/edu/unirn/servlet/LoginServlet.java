package br.edu.unirn.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unirn.dominio.Usuario;

@WebServlet("/logar")
public class LoginServlet extends HttpServlet {
	
	public static Map<String, String> usuarios;
	static {		
		usuarios = new HashMap<>();
		usuarios.put("allan", "");
		usuarios.put("icaro", "");
		usuarios.put("ramon", "");
		usuarios.put("itamir", "");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		
		if (usuarios.containsKey(login)){
			Usuario u = new Usuario();
			u.setNome(login);
			
			req.getSession().setAttribute("usuario", u);
			resp.sendRedirect("/ExemploWeb1/tela2.jsp");
		} else {
			resp.sendRedirect("/ExemploWeb1/login.jsp");
		}
	}
	
	

}
