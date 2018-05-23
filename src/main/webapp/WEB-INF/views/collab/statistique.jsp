<%@page import="dev.sgp.util.Constantes"%>
<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<c:set var="base" value="${request.contextPath}"/>
<script src="bootstrap/js/bootstrap.js"></script>
 <link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">


    <title>Collaboratueurs</title>
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <img class="mr-3" src="bootstrap/icon-developer-icon.png" >
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

    <h1>Les Statistiques</h1>

	<table class="table">
  <thead>
    <tr>
      <th scope="col">Chemin</th>
      <th scope="col">Nombre visite</th>
      <th scope="col">Min(ms)</th>
      <th scope="col">Max(ms)</th>
      <th scope="col">Moy(ms)</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="" varStatus="" var="">
    <tr>
      <td>1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
  </body>
</html>