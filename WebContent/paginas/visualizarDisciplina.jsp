<%@page import="br.edu.unirn.dominio.Disciplina" %>
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
<body>

<body style="background: #AAAAAA">
	<h1></h1>
	<%@include file="/incluir/menuNavegador.jsp" %>

<div style="margin-left: 35%;">
<h3>Disciplina Cadastrada</h3>
	<table>
			<tbody>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">Nome:</label></th>
					<td><%= ((Disciplina) session.getAttribute("disciplina")).getNome() %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">Sala:</label></th>
					<td><%= ((Disciplina) session.getAttribute("disciplina")).getSala() %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">Curso:</label></th>
					<td><%= ((Disciplina) session.getAttribute("disciplina")).getCurso() %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><span class="label label-default">Horario:</span></th>
					<td><%= ((Disciplina) session.getAttribute("disciplina")).getHorario() %></td>
				</tr>
				<tr>
					<th style="text-align: right;"><label class="label label-primary">Docente:</label></th>
					<td><%= ((Disciplina) session.getAttribute("disciplina")).getDocente().getNome() %></td>
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