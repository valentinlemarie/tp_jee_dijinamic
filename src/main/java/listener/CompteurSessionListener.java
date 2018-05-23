package listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class CompteurSessionListener implements HttpSessionListener {

@Override
public void sessionCreated(HttpSessionEvent event) {
Integer compteur = (Integer) event.getSession().getServletContext().getAttribute("compteur");
event.getSession().getServletContext().setAttribute("compteur", compteur + 1);

System.out.println("Nombre de sessions ouvertes = " + (compteur + 1));
}

@Override
public void sessionDestroyed(HttpSessionEvent arg0) {
}
}


