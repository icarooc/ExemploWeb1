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
	
<form action="/ExemploWeb1/cadastrarDocente" method="post">
	<fieldset>
		<table>
			<caption style="background-color: #EEEEEE;">Dados gerais</caption>
				<tbody>
					<tr>
						<th>Nome:</th>
						<th><input type="text" placeholder="nome" name="nome" /></th>
					</tr>
					<tr>
						<th>Data Nascimento:</th>
						<th><input type="text" placeholder="dd/mm/aaaa"
							name="dtNascimento" id="nascimento" onkeyup="editar()" maxlength="10"/></th>
					</tr>
					<tr>
						<th>CPF:</th>
						<th><input type="text" placeholder="xxxxxxxxxxx" name="cpf"
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
						<th><input type="text" placeholder="DDNNNNNNNNN" name="numero" maxlength="11"/></th>
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

<script type="text/javascript">
    function editar() {
         var data = document.getElementById("nascimento").value;
         var ultimo = data.charAt(data.length - 1);
         if (ultimo != '/' && !isNumber(ultimo)){
			data = data.substring(0,(data.length - 1));;
         } else {
         	if (data.length == 2)
             	data += '/';
         	if (data.length == 5)
            	data += '/';
         }
         document.getElementById("nascimento").value = data;
    }

    function isNumber(n) {
        return !isNaN(parseFloat(n)) && isFinite(n);
    }
</script>

</body>
</html>