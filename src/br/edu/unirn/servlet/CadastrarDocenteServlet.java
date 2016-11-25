package br.edu.unirn.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unirn.dominio.Docente;

@WebServlet("/cadastrarDocente")
public class CadastrarDocenteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		DateFormat formatador = new SimpleDateFormat("dd/MM/yyyy");
		
		Date dtNascimento;
		try {
			dtNascimento = formatador.parse((String) req.getParameter("dtNascimento"));
		} catch (ParseException e) {
			dtNascimento = new Date();
		}
		
		String nome = (String) req.getParameter("nome");
		Long cpf = Long.parseLong((String) req.getParameter("cpf"));
		Long rg = Long.parseLong((String) req.getParameter("rg"));
		String titulacao = (String) req.getParameter("titulacao");
		String endereco = (String) req.getParameter("endereco");
		String numero = (String) req.getParameter("numero");
		
		Docente docente = new Docente();
		docente.setNome(nome);
		docente.setDataNascimento(dtNascimento);
		docente.setCpf(cpf);
		docente.setRg(rg.intValue());
		docente.setTitulacao(titulacao);
		docente.setEndereco(endereco);
		docente.setNumero(numero);
		
		req.getSession().setAttribute("docente", docente);
		
		resp.sendRedirect("/ExemploWeb1/paginas/visualizarDocente.jsp");
	}

}
