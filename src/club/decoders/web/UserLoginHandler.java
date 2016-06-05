package club.decoders.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.models.User;
import club.decoders.utils.CookieMaster;

public class UserLoginHandler extends HttpServlet {

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
		//super.doGet(req, resp);
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String usn = req.getParameter("usn");
		String pass = req.getParameter("password");
		if(DatastoreAdmin.isLoginVerified(usn, pass))
		{
			RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher("/userdash.jsp");
			User user = DatastoreAdmin.retrieveUser(usn);
			req.setAttribute("user", user);
			CookieMaster.setCookie(resp,CookieMaster.createCookie(user));
			rd.forward(req, resp);
		}
		else
		{
			RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher("/user_login.jsp");
			String status = "Invalid Credentials";
			req.setAttribute("status", status);
			rd.forward(req, resp);
		}
		
	}
	
	

}
