<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
	<title>Affiche toutes les catégories</title>
</head>

<body>
	<h1>Liste des catégories</h1>
	<table border='1'>
		<tr><th>Code</th><th>Libellé</th><th>Description</th></tr>
		<%-- Pour chaque catégorie, une ligne dans la table HTML --%>
		<c:forEach var="categorie" items="${categories}">
			<tr>
				<td>${categorie.code}</td>
				<%-- Le libellé ou la description peuvent contenir des caractères spéciaux HTML ! --%>
				<td>${mvc.encoders.html(categorie.libelle)}</td>
				<td>${mvc.encoders.html(categorie.description)}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="${pageContext.request.contextPath}/">Retour au menu</a>
</body>

</html>