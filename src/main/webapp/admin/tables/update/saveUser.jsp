<%@ page import="registerUser.User" %>
<%@ page import="registerUser.UserDao" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save User</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div class="container">
<%
    // Récupération des paramètres de la requête
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String type = request.getParameter("type");
    String nom = request.getParameter("nom");
    String prenom = request.getParameter("prenom");
    String tel = request.getParameter("tel");
    String adress = request.getParameter("adress");
    String specialite = request.getParameter("specialite");

    // Création de l'objet User et définition de ses propriétés
    User user = new User();
    user.setEmail(email);
    user.setPassword(password);
    user.setType(type);
    user.setNom(nom);
    user.setPrenom(prenom);
    user.setTel(tel);
    user.setAdress(adress);
    user.setSpecialite(specialite);

    // Mise à jour de l'utilisateur dans la base de données
    int status = UserDao.save(user);

    // Affichage du message de succès ou d'erreur
    if (status > 0) {
        response.sendRedirect("../AfficheCU.jsp");
    } else {
%>
    <div class="alert alert-danger">
        Sorry! Unable to save record.
    </div>
<%
    }
%>
</div>
</body>
</html>
