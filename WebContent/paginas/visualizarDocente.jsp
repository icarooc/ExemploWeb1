<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.edu.unirn.dominio.Docente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="/ExemploWeb1/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<script src="http://code.jquery.com/jquery.js"></script>
<script src="/ExemploWeb1/bootstrap/js/bootstrap.min.js"></script>
</head>

<body style="background: #AAAAAA">
	<h1></h1>
	<%@include file="/incluir/menuNavegador.jsp" %>

<div style="left: 35%;">
<h3>Docente Cadastrado</h3>
	<table>
			<tbody>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">Nome:</label></th>
					<td><%= ((Docente) session.getAttribute("docente")).getNome() %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">Data Nascimento:</label></th>
					<td><%= new SimpleDateFormat("dd/MM/yyyy").format(((Docente) session.getAttribute("docente")).getDataNascimento()) %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">CPF:</label></th>
					<td><%= ((Docente) session.getAttribute("docente")).getCpf()  %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><span class="label label-default">RG:</span></th>
					<td><%= ((Docente) session.getAttribute("docente")).getRg()  %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">Titulacao:</label></th>
					<td><%= ((Docente) session.getAttribute("docente")).getTitulacao()  %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">Endereco:</label></th>
					<td><%= ((Docente) session.getAttribute("docente")).getEndereco()  %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">Numero:</label></th>
					<td><%= ((Docente) session.getAttribute("docente")).getNumero()  %></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
						<a href="/ExemploWeb1/tela2.jsp"><button class="btn btn-success">Sair</button></a>
					</td>
				</tr>
			</tbody>
		</table>
</div>
</body>
</html>