<%@page import="br.edu.unirn.dominio.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>P�gina principal</title>
</head>
<body>
	<h2>Usu�rio Logado</h2> <%= ((Usuario) session.getAttribute("usuario")).getNome() %>
	<a href="/ExemploWeb1/sair">Sair</a>
</body>
</html>