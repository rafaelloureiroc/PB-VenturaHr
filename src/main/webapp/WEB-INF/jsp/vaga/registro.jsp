<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>ProjetoJava</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<header class="masthead">
		<div class="container px-4 px-lg-5 h-100">
			<c:import url="/WEB-INF/jsp/menu.jsp" />
		</div>
	</header>

	<div class="container">

		<form action="/vaga/incluir" method="post">
			<h2>Registro de vagas</h2>

			<div class="form-group">
				<label>cargo:</label> <input type="text" class="form-control"
					name="cargo" value="Junior">
			</div>
			
			
			<div class="form-group">
				<label>cidade:</label> <input type="text" class="form-control"
					name="Cidade" value="niteroi">
			</div>
			
			
			<div class="form-group">
				<label>formaContracacao:</label> <input type="text" class="form-control"
					name="formaContratacao" value="Via entrevista">
			</div>
			
			<div class="form-group">
				<label>Descricao:</label> <input type="text" class="form-control"
					name="descricao" value="Atuar na area tecnologica da empresa e desenvolver automacoes">
			</div>
			
			<div class="form-group">
				<label>Perfil:</label> <input type="text" class="form-control"
					name="perfil" value="Soft skills boas, boa comunicação e proatividade">
			</div>
			
			<div class="form-group">
				<label>Peso:</label> <input type="text" class="form-control"
					name="peso" value="5">
			</div>
			
			
			
			
			

			<button type="submit">Registrar</button>
		</form>
	</div>
</body>
</html>