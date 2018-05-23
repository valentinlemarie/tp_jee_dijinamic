<%@page import="dev.sgp.util.Constantes"%>
<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>



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
  <img class="mr-3" src="<%=request.getContextPath()%>/bootstrap/icon-developer-icon.png" >
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
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

  <div class="contener">
    <div class="text-right">
      <a href="editer" class=" btn btn-info">Ajouter un nouveau Collaboratueur</a>
    </div>

    <h1>Les Collaborateurs</h1>

    <form class="form-inline ">

  <div class="row">
      <div class="form-group col justify-content-start">
        <label for="rechercheNomPrenom" class="col-form-label col-md-4">Rechercher un nom ou prenom qui commence par :</label>
        <input type="text"  class="form-control col col-md-2  " id="rechercheNomPrenom" >
        <input type="submit" class="btn btn-primary col-md-1 offset-md-1 " value="Rechercher"  />
        <input id="colIsOn" class="offset-md-1" type="checkbox" >
        <label class="col-form-label col-md-2" for="colIsOn">Voir les Collaboratueurs désactivés </label>

      </div>
      <div class="form-group col justify-content-start">
        <label for="flitrerDepartement" class=" col-form-label col-md-4">Filtrer par département :</label>
        <select id="inputState" class="form-control col col-md-2 offset">
            <option selected>Tous</option>
            <option>Comptabilité</option>
            <option>Ressources Humaine</option>
            <option>Informatique</option>
          </select>
          <div class="col col-lg-3" ></div>
      </div >
  </div>

    </form>

  <div class="row">
  <%
  
  List<Collaborateur> listCollaborateurs =(List<Collaborateur>) request.getAttribute("listCol");
  for( Collaborateur col :listCollaborateurs ){ %>
  <div class="col-sm-4">
    <div class="card text-center bg-light mb-3" style="max-width: 18rem;">
      <div class="card-header"><%col.getNom();%> <%col.getPrenom();%></div>
        <div class="card-body">

          <img src="<%=request.getContextPath()%><%col.getPhoto();%>" class="rounded float-left  " alt="...">

          <p class="card-text">Né le : <%col.getDateDeNaissance();%> <br /> emailPro : <%col.getEmailPro();%></p>
          <div class="text-right">
            <bouton class="btn btn-primary ">Editer</bouton>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <%	} %> 
</div>

  </body>
</html>