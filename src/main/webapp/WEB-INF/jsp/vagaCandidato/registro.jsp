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

		<form action="/vagaCandidato/incluir" method="post">
			<h2>Vagas Disponiveis:</h2>
			
		
			<div class="form-group">
				<label>Candidato:</label>
				<select name="candidato.id" class="form-control">
					<c:forEach var="c" items="${candidatoLista}">
						<option value="${c.id}">${c.nome}</option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<label>Vagas:</label>
				
				<c:forEach var="v" items="${vagaLista}">
					<div class="checkbox">
					  <label><input type="checkbox" name="idsVagas" value="${v.id}" checked> ${v.cargo}</label>
					</div>
				</c:forEach>	
			</div>

			<button type="submit">Cadastrar</button>
		</form>		
	</div>
</body>
</html>
