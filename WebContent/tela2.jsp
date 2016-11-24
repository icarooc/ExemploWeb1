<%@page import="br.edu.unirn.dominio.Usuario"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<script src="http://code.jquery.com/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background: #AAAAAA">
<h1>Bem vindo!</h1>

<% if (session.getAttribute("usuario") == null) {%>
<h4>Visitante, faça login para acessar as funcionalidades do sistema.</h4>
<% } else { %>
<h2>Olá, <%= ((Usuario) session.getAttribute("usuario")).getNome() %></h2>
<%} %>

	<%@include file="/incluir/menuNavegador.jsp" %>
	
</body>
</html>