<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css">
<script  src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>

    <title>Collaboratueurs</title>
  </head>
  <body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <img class="mr-3" src="icon-developer-icon.png" >
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active ">
        <a class="nav-link" href="#">Collaboratueurs <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Statistiques</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Actualités</a>
      </li>
    </ul>
  </div>
</nav>


<div class="container">
  <form class="needs-validation" method="post" >


    <div class="form-group row">
      <label for="validationTooltip01" class="col-sm-2 col-form-label">Nom</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" name="nom" id="validationTooltip01"   >
        
      </div>
    </div>
    <div class="form-group row">
      <label for="validationTooltip02" class="col-sm-2 col-form-label">Prénom</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" name="prenom" id="validationTooltip02"  >
      
    </div>
    </div>


    <div class="form-group row">
      <label for="validationTooltip03" class="col-sm-2 col-form-label">Date de naissance</label>
      <div class="col-sm-4">
      <input type="date" class="form-control" name="dateNaissance" id="validationTooltip03"  >
      
    </div>
    </div>
    <div class="form-group row">
      <label for="validationTooltip04" class="col-sm-2 col-form-label">adresse</label>
      <div class="col-sm-4">
      <textarea rows="4"  class="form-control" name="adresse" id="validationTooltip04" > </textarea>
      
    </div>
    </div>
    <div class="form-group row">
      <label for="validationTooltip05" class="col-sm-2 col-form-label">Numéro de Sécurité Sociale</label>
      <div class="col-sm-4">
      <input type="number" class="form-control" name="secureId" id="validationTooltip05" maxlength="15" >
      
    </div>
    </div>

  <input class="btn btn-primary" value="Enregistrer "type="submit">
</form>

</div>


  </body>
</html>
