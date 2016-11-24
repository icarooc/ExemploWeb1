<div class="navbar">
		<div class="navbar-inner" style="background: #303030">
			<a class="brand" href="login.jsp">Logar</a>
			<ul class="nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-target="#">
						Cadastro
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="paginas/cadastroDocente.jsp">Cadastrar Docente</a></li>
						<li><a href="#">Cadastrar Disciplina</a></li>
						<li><a href="#">link2</a></li>
						<li class="dropdown-submenu">
							<a href="#">
								Submenu
							</a>
							<ul class="dropdown-menu">
								<li><a href="#myModal" data-toggle="modal">link4</a></li>
								<li><a href="testando2.html">link5</a></li>
							</ul>
						</li>
						<li><a href="#">link3</a></li>
					</ul>
				</li>
				<li>
					<a href="#">Link</a>
				</li>
				<li>
					<a href="#">Link</a>
				</li>
				<li>
					<a href="#myModal" data-toggle="modal">Sair</a>
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