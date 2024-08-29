<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 29/08/2024
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>
<p>index</p>
<%--<button><a href="/index">ici</a></button>--%>
<form action="reception" method="post">
    <label for="nom">Nom du chat</label>
    <input type="text" id="nom" name="nom">
    <label for="race">Race</label>
    <input type="text" id="race" name="race">
    <label for="repas">repas favoris</label>
    <input type="text" id="repas" name="repas">
    <label for="dateDeNaissance">date de naissance </label>
    <input type="date" id="dateDeNaissance" name="dateDeNaissance">
    <button>send</button>

</form>
<button><a href="reception">reception</a></button>
</body>
</html>
