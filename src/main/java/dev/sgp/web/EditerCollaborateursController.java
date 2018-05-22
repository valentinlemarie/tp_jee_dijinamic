package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateursController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String avecMatricule = req.getParameter("Matricule");

		
		resp.setContentType("text/html");

		// code HTML ecrit dans le corps de la reponse
		if(avecMatricule != null){
		resp.getWriter().write("<h1>Liste des collaborateurs</h1>"
		+ "<ul>"
		+ "<li>avecMatricule="+ avecMatricule + "</li>"
		+ "</ul>");
		}else{
			resp.sendError(400, "Un matricule est attendu");
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String avecMatricule = req.getParameter("Matricule");
		String avecNom = req.getParameter("Nom");
		String avecTitre = req.getParameter("Titre");
		String avecPrenom = req.getParameter("Prenom");
		
		if(avecMatricule == null|| avecTitre == null || avecPrenom== null || avecNom == null ){
			String error = "";
			if(avecMatricule  == null){ error+="Matricule ";}
			if(avecTitre == null ){ error+="Titre ";}
			if(avecNom == null){ error+="Nom ";}
			if(avecPrenom == null){ error+="Prenom ";}
			resp.sendError(400," Les paramètres suivants sont incorrects :"+error);
		}else{
			resp.setStatus(201);
			resp.getWriter().write("<p> Creation d’un collaborateur avec les informations suivantes :<br> </p>"
					+"Matrice="+avecMatricule+",Titre="+avecTitre+",Nom="+avecNom+",Prenom="+avecPrenom);
		}
	}
}
