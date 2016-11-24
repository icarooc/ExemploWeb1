<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="/cadastrarDocente" method="post">
	<fieldset>
		<table>
			<caption style="background-color: red;">Dados gerais</caption>
				<tbody>
					<tr>
						<th>Nome:</th>
						<th><input type="text" placeholder="nome" name="nome" /></th>
					</tr>
					<tr>
						<th>Data Nascimento:</th>
						<th><input type="text" placeholder="data de nascimento"
							name="dtNascimento" /></th>
					</tr>
					<tr>
						<th>CPF:</th>
						<th><input type="text" placeholder="cpf" name="cpf"
							maxlength="11" /></th>
					</tr>
					<tr>
						<th>RG:</th>
						<th><input type="text" placeholder="rg" name="rg"
							maxlength="11" /></th>
					</tr>
					<tr>
						<th>Titulacao:</th>
						<th><input type="text" placeholder="titulação" name="titulacao" maxlength="50"/></th>
					</tr>
					<tr>
						<th>Endereco:</th>
						<th><input type="text" placeholder="endereço" name="endereco" maxlength="150"/></th>
					</tr>
					<tr>
						<th>Numero:</th>
						<th><input type="text" placeholder="número" name="numero" maxlength="11"/></th>
					</tr>
				</tbody>
			</table>
	</fieldset>
</form>

</body>
</html>