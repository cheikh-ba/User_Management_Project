<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>Inscription </title>
    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body class="bg-gradient-dark">
     <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5" >
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row" style="border: 5px solid #26b" class="wrapper fadeInLeft">
                    <div id="" class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Ajout Compte Utilisateur</h1>
                            </div>
                            <form class="user" action="tables/update/saveUser.jsp"  method="post">
                            	<div class="form-group">
                                    <center><span>Type de compte</span></center>
                                    <select name="type" class="form-control" required>  
										<option> patient </option>  
										<option> medecin </option>    
										<option> hopital </option> 
									</select>
                                </div>
                                <div class="form-group">
                                    <input type="hidden" class="form-control form-control-user" name="specialite"
                                        placeholder="specialite" value="-" style="text-align: center;" readonly="">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="prenom" 
                                            placeholder="Pr�nom" style="text-align: center;">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" name="nom"
                                            placeholder="Nom" style="text-align: center;">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="tel" class="form-control form-control-user" name="tel" 
                                            placeholder="T�l�phone" style="text-align: center;">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" name="adress"
                                            placeholder="Adresse" style="text-align: center;">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" name="email"
                                        placeholder="Addresse Email" style="text-align: center;">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" name="password"
                                        placeholder="Mot de Passe" style="text-align: center;">
                                </div>
                                
                                <input type="submit" class="btn btn-primary btn-user btn-block" value="Valider" name="valider" />
                                <hr>
                                <a href="index.html" class="btn btn-google btn-user btn-block">Retour</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
 
</body>
</html>