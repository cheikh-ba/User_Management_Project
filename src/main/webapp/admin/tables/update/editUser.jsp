<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="registerUser.User" %>
<%@ page import="registerUser.UserDao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
</head>
<body>
<h1>Update User</h1>

<form action="editUser2.jsp" method="post">
  <table>

    <%
      int id = Integer.parseInt(request.getParameter("id"));
      User user = UserDao.getUserById(id);
    %>

    <tr><td>Email :</td><td><input type="email" name="email" value="<%= user.getEmail() %>"/></td></tr>
    <tr><td>Password :</td><td><input type="password" name="password" value="<%= user.getPassword() %>"/></td></tr>
    <tr><td>Type :</td><td><input type="text" name="type" value="<%= user.getType() %>" readonly=""/></td></tr>
    <tr><td>Nom :</td><td><input type="text" name="nom" value="<%= user.getNom() %>"/></td></tr>
    <tr><td>Prénom :</td><td><input type="text" name="prenom" value="<%= user.getPrenom() %>"/></td></tr>
    <tr><td>Téléphone :</td><td><input type="tel" name="tel" value="<%= user.getTel() %>"/></td></tr>
    <tr><td>Adresse :</td><td><input type="text" name="adress" value="<%= user.getAdress() %>"/></td></tr>
    <tr><td>Spécialité :</td><td><input type="text" name="specialite" value="<%= user.getSpecialite() %>"/></td></tr>

    <input type="hidden" name="id" value="<%= user.getId() %>">

  </table>
  <input type="submit" value="Edit & Save">
</form>

</body>
</html>