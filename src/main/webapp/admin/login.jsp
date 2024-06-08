<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Admin</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/loginAdmin.css"/>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<%
    // Vérifier si le formulaire a été soumis
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        // Validation des identifiants
        if ("admin".equals(login) && "admin".equals(password)) {
            // Rediriger vers la page index.html
            response.sendRedirect("tables/AfficheCU.jsp");
        } else {
            // Afficher un message d'erreur
            out.println("<div class='alert alert-danger'>Invalid login or password</div>");
        }
    }
%>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="img/icon_admin.png" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form method="post" action="login.jsp">
      <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
      <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In"><hr>
      <!-- <a href="index.html" class="fadeIn fourth">Back</a> --> 
    </form>
  </div>
</div>
</body>
</html>
