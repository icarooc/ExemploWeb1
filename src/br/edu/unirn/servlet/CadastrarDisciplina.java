package br.edu.unirn.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unirn.dominio.Disciplina;
import br.edu.unirn.dominio.Docente;

@WebServlet("/cadastrarDisciplina")
public class CadastrarDisciplina extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nome = (String) req.getParameter("nome");
		String sala = (String) req.getParameter("sala");
		String curso = (String) req.getParameter("curso");
		String horario = (String) req.getParameter("horario");
		
		String nomeDocente = (String) req.getParameter("docente");
		
		Docente docente = new Docente();
		docente.setNome(nomeDocente);
		
		Disciplina disciplina = new Disciplina();
		disciplina.setNome(nome);
		disciplina.setSala(sala);
		disciplina.setCurso(curso);
		disciplina.setHorario(horario);
		disciplina.setDocente(docente);
		
		
		req.getSession().setAttribute("disciplina", disciplina);
		
		resp.sendRedirect("/ExemploWeb1/paginas/visualizarDisciplina.jsp");
		
	}

}
