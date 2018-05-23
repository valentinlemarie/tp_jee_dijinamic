package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class EditerCollaborateursController extends HttpServlet {
	
	private int matriculeID = 0;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/collab/editerCollaborateurs.jsp").forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ZonedDateTime now = ZonedDateTime.now(); 
		String matricule = ""+matriculeID++;
		
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom"); 
		String adresse = req.getParameter("adresse");
		String numeroSecuriteSociale =req.getParameter("secureId");
		String naissance =req.getParameter("dateNaissance"); 
		
		if(nom.isEmpty() || prenom.isEmpty() || adresse.isEmpty() || numeroSecuriteSociale.isEmpty() || naissance.isEmpty() || numeroSecuriteSociale.matches("^[0-9]{15}$") ){
			String error ="";
			if(nom.isEmpty()){error+="Le nom est obligatoire !\n\r";}
			if(prenom.isEmpty()){error+="Le prenom est obligatoire !\n\r";}
			if(adresse.isEmpty()){error+="L'adresse est obligatoire !\n\r";}
			if(naissance.isEmpty()){error+="Le date de naissanceom est obligatoire !\n\r";}
			if(numeroSecuriteSociale.isEmpty()){error+="Le numero de Securite Sociale de 15 chiffre est obligatoire !\n\r";}
			resp.sendError(400, error);
		}else{	
			resp.setStatus(200);
			LocalDate dateNaissance = LocalDate.parse( naissance) ;
			String emailPro =nom+"."+prenom+"@societe.com";
			String photo = "/bootstrap/new_logo.png";
			Boolean actif = true;
			Collaborateur collaborateur = new Collaborateur(matricule, nom, prenom, dateNaissance, adresse, numeroSecuriteSociale, emailPro, photo, now,actif );
		    Constantes.COLLAB_SERVICE.sauvegarderCollaborateur(collaborateur);
			resp.sendRedirect(req.getContextPath()+"/collaborateurs/lister");
		    
			
		}
	} 
}
