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
	
<form action="/ExemploWeb1/cadastrarDisciplina" method="post">
	<fieldset>
		<table>
			<caption style="background-color: #EEEEEE;">Dados gerais</caption>
				<tbody>
					<tr>
						<th>Nome:</th>
						<th><input type="text" placeholder="nome" name="nome" /></th>
					</tr>
					<tr>
						<th>Sala:</th>
						<th><input type="text" placeholder="sala"
							name="sala" maxlength="100"/></th>
					</tr>
					<tr>
						<th>Curso:</th>
						<th><input type="text" placeholder="curso" name="curso"
							maxlength="110" /></th>
					</tr>
					<tr>
						<th>Horário:</th>
						<th><input type="text" placeholder="Manhã, tarde..." name="horario"
							maxlength="110" /></th>
					</tr>
					<tr>
						<th>Docente:</th>
						<th><input type="text" placeholder="Docente" name="docente" maxlength="500"/></th>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" class="btn btn-success" value="Salvar"/>
						</td>
					</tr>
				</tbody>
			</table>
	</fieldset>
</form>

</body>
</html>