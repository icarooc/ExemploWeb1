<div class="navbar">
		<div class="navbar-inner" style="background: #303030">
			<% if (session.getAttribute("usuario") == null) {%>
				<a class="brand" href="/ExemploWeb1/login.jsp">Logar</a>
			<% } else { %>
				<a class="brand" href="#">Logado</a>
			<%} %>
			<ul class="nav">
			<% if (session.getAttribute("usuario") != null) {%>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-target="#">
						Cadastro
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="paginas/cadastroDocente.jsp">Cadastrar Docente</a></li>
						<li><a href="paginas/cadastroDisciplina.jsp">Cadastrar Disciplina</a></li>
					</ul>
				</li>
			<% } %>
				<li>
					<% if (session.getAttribute("usuario") != null) {%>
						<a href="#myModal" data-toggle="modal">Sair</a>
					<% } else { %>
						<a href="#">Sair</a>
					<%} %>
				</li>
			</ul>
		</div>
	</div>
	
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel" style="color: red">Atenção!</h3>
		</div>
		<div class="modal-body">
			<p>Tem certeza que deseja sair?</p>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
			<a href="deslogar" class="btn btn-primary">Sim</a>
		</div>
	</div>