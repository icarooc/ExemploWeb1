<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
	<h1></h1>
	<%@include file="/incluir/menuNavegador.jsp" %>
	
	<form action="logar" method="post">
		<fieldset style="text-align: center; margin-top: 20%;">
			<div style="border-style: solid; position: relative; width: 20%; left: 40%;">
				<h2>Fazer Login</h2>
				<p><input type="text" name="login" placeholder="Usuário" style="width: 80%"/></p>
				<p><input type="password" name="senha" placeholder="Senha" style="width: 80%"/></p>
				<p><input type="submit" class="btn btn-success" value="Logar" style="width: 40%"/></p>
			</div>
		</fieldset>
	</form>

</body>
</html>