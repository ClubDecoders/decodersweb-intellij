package club.decoders.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.google.apphosting.utils.config.ClientDeployYamlMaker.Request;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.utils.CookieMaster;
@SuppressWarnings("serial")
public class CookieHandler extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CookieMaster.setCookie(resp, CookieMaster.createCookie(DatastoreAdmin.retrieveUser(req.getParameter("usn"))));

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req,resp);
	}

}
