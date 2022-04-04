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
	<div>
		<c:import url="/WEB-INF/jsp/menu.jsp" />
	</div>
	<div class="container fixed-top">

		<h4>Registrar Empresa:</h4>


		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<c:if test="${not empty usuarioLista}">
			<p>Quantidade de Empresas registrados: ${usuarioLista.size()}</p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>email</th>
						<th>tipo</th>
						<th>cnpj</th>
						<th>Candidatos</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${usuarioLista}">
						<tr>
							<td>${u.nome}</td>
							<td>${u.email}</td>
							<td>${u.tipo}</td>
							<td>${u.cnpj}</td>
							<td>${u.candidatos}</td>

						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<th>Nome</th>
						<th>email</th>
						<th>tipo</th>
						<th>cnpj</th>
						<th>Candidatos</th>
						<th></th>
					</tr>
				</tfoot>
			</table>
		</c:if>

		<c:if test="${empty usuarioLista}">
			<p>Não existem empresas registrados</p>
		</c:if>
	</div>
</body>
</html>