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
	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container fixed-top">
		<form action="/vagaCandidato" method="get">
			<button type="submit">Candidatar</button>
		</form>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<c:if test="${not empty vagaCandidatoLista}">
			<p>Quantidade de vagas cadastrados: ${vagaCandidatoLista.size()}</p>
			<label>*respostas serão enviadas via email!!:</label>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Candidatos</th>
						<th>Vagas</th>

						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="v" items="${vagaCandidatoLista}">
						<tr>

							<td>${v.candidato.nome}</td>
							<td>${v.vagas.size()}</td>
							<td><a href="/candidato/${c.id}/excluir">Excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<th>Candidatos</th>
						<th>Vagas</th>


					</tr>
				</tfoot>
			</table>
		</c:if>

		<c:if test="${empty vagaCandidatoLista}">
			<p>Não existem candidatações !!!</p>
		</c:if>
	</div>
</body>
</html>

