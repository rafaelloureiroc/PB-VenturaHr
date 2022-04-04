<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8" />
	<title>ProjetoJava</title>
  	 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    </head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container fixed-top" >	

		<h4>Registro de candidato:</h4>

		<form action="/candidato" method="get">
			<button type="submit">Novo candidato</button>
		</form>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
			  <strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<c:if test="${not empty candidatoLista}">
		  	<p>Quantidade de candidatos registrados: ${candidatoLista.size()}</p>            
		  	<table class="table table-striped">
			    <thead>
			      <tr>
			        <th>Nome</th>
			        <th>Cpf</th>
			        <th>Endereço</th>
			        <th>Email</th>
			        <th>Telefone</th>
			       
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			    <c:forEach var="c" items="${candidatoLista}">
			      <tr>
			        <td>${c.nome}</td>
			        <td>${c.endereco}</td>
			        <td>${c.telefone}</td>
			        <td>${c.email}</td>
			        <td>${c.cpf}</td>
			       <td><a href="/candidato/${c.id}/excluir">Excluir</a></td>
			      </tr>
				</c:forEach>
			    </tbody>
			    <tfoot>
			      <tr>
			        <th>Nome</th>
			        <th>Cpf</th>
			        <th>Endereço</th>
			        <th>Email</th>
			        <th>Telefone</th>
			        <th></th>
			      </tr>
			    </tfoot>
		  	</table>
		</c:if>
		
		<c:if test="${empty candidatoLista}">
	  		<p>Não existem candidatos registrados!</p>            
	  	</c:if>
	</div>
</body>
</html>