<%@ page import="registerUser.UserDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete User</title>
</head>
<body>
<%
    // Récupération de l'ID de l'utilisateur à partir de la requête
    String sid = request.getParameter("id");
    int id = Integer.parseInt(sid);

    // Suppression de l'utilisateur
    int status = UserDao.delete(id);

    // Redirection ou message en fonction du statut de la suppression
    if (status > 0) {
        // Redirection en cas de succès
        response.sendRedirect("../AfficheCU.jsp");
    } else {
        // Affichage d'un message d'erreur
        out.println("<p>Sorry! unable to delete record</p>");
    }
%>
</body>
</html>
