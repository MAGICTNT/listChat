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
    <title>Title</title>
</head>
<body>
<p>reception</p>
<% if (chats.size() <= 0) {%>
<p> auccun chat trouver</p>
<%} else {%>
<% for (Chat chat : chats) {%>
<p><%= chat%></p>
<%}%>
<%}%>


<button><a href="index">ici</a></button>

</body>
</html>
