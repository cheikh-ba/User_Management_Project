<%@ page import="registerUser.User" %>
<%@ page import="registerUser.UserDao" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<%
  // R�cup�ration des param�tres de la requ�te
  int id = Integer.parseInt(request.getParameter("id"));
  String email = request.getParameter("email");
  String password = request.getParameter("password");
  String type = request.getParameter("type");
  String nom = request.getParameter("nom");
  String prenom = request.getParameter("prenom");
  String tel = request.getParameter("tel");
  String adress = request.getParameter("adress");
  String specialite = request.getParameter("specialite");

  // Cr�ation de l'objet User et d�finition de ses propri�t�s
  User user = new User();
  user.setId(id);
  user.setEmail(email);
  user.setPassword(password);
  user.setType(type);
  user.setNom(nom);
  user.setPrenom(prenom);
  user.setTel(tel);
  user.setAdress(adress);
  user.setSpecialite(specialite);

  // Mise � jour de l'utilisateur dans la base de donn�es
  int status = UserDao.update(user);

  // Redirection ou affichage du message d'erreur
  if (status > 0) {
    response.sendRedirect("../AfficheCU.jsp");
  } else {
%>
    <html>
    <head>
      <title>Error</title>
    </head>
    <body>
      <h2>Sorry! Unable to save record</h2>
      <a href="editUser.jsp">Back</a>
    </body>
    </html>
<%
  }
%>