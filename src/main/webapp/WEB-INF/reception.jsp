<%@ page import="entity.Chat" %><%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 29/08/2024
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="chats" type="java.util.List<entity.Chat>" scope="request"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des Chats</title>
</head>
<body>
<h1>Liste des Chats</h1>

<% if (chats.size() <= 0) { %>
<p>Aucun chat trouvé</p>
<% } else { %>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Race</th>
        <th>Repas Favoris</th>
        <th>Date de Naissance</th>
    </tr>
    </thead>
    <tbody>
    <% for (Chat chat : chats) { %>
    <tr>
        <td><%= chat.getIdChat() %></td>
        <td><%= chat.getNom() %></td>
        <td><%= chat.getRace() %></td>
        <td><%= chat.getRepasFavoris() %></td>
        <td><%= chat.getDateDeNaissance() %></td>
    </tr>
    <% } %>
    </tbody>
</table>
<% } %>

<button><a href="index">Retour à l'accueil</a></button>

</body>
</html>
