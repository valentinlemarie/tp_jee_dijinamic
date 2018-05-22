<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js">"></script>

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


<div class="container">
  <form class="needs-validation" novalidate>


    <div class="form-group row">
      <label for="validationTooltip01" class="col-sm-2 col-form-label">Nom</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" id="validationTooltip01"   required>
        <div class="invalid-tooltip">
          Le nom est obligatoire !
        </div>
      </div>
    </div>
    <div class="form-group row">
      <label for="validationTooltip02" class="col-sm-2 col-form-label">Prénom</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" id="validationTooltip02"  required>
      <div class="invalid-tooltip">
        Le prénom est obligatoire !
      </div>
    </div>
    </div>


    <div class="form-group row">
      <label for="validationTooltip03" class="col-sm-2 col-form-label">Date de naissance</label>
      <div class="col-sm-4">
      <input type="date" class="form-control" id="validationTooltip03"  required>
      <div class="invalid-tooltip">
        La date de naissance est obligatoire !
      </div>
    </div>
    </div>
    <div class="form-group row">
      <label for="validationTooltip04" class="col-sm-2 col-form-label">adresse</label>
      <div class="col-sm-4">
      <textarea rows="4"  class="form-control" id="validationTooltip04" required> </textarea>
      <div class="invalid-tooltip">
        L'addresse est obligatoire !
      </div>
    </div>
    </div>
    <div class="form-group row">
      <label for="validationTooltip05" class="col-sm-2 col-form-label">Numéro de Sécurité Sociale</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" id="validationTooltip05"  required>
      <div class="invalid-tooltip">
        le numero de securite sociale est obligatoire !
      </div>
    </div>
    </div>

  <button class="btn btn-primary" type="submit">Submit form</button>
</form>

</div>

<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
  </body>
</html>
