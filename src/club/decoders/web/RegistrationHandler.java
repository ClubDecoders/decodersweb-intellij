package club.decoders.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.models.User;
import club.decoders.utils.PasswordUtility;

@SuppressWarnings("serial")
public class RegistrationHandler extends HttpServlet {

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String usn = req.getParameter("usn");
		String name = req.getParameter("name");
		String branch = req.getParameter("branch");
		String semester = req.getParameter("sem");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String password = req.getParameter("password");
		String confirm = req.getParameter("confirm");
		String dispatchUrl = "/index.html";
		String status;
		if(PasswordUtility.matchPassword(password, confirm))
		{
			User user = new User(usn,name,branch,semester,email,phone,password,confirm);
			DatastoreAdmin.insertUser(user);
			dispatchUrl = "/status.jsp";
			status = "Successfully registered! Now you can login.";
		}
		else
		{
			dispatchUrl = "/registration.jsp";
			status = "Passwords do not match";
		}
		RequestDispatcher rd= getServletConfig().getServletContext().getRequestDispatcher(dispatchUrl);
		req.setAttribute("status", status);
		rd.forward(req, resp);
		
	}
	
	

}
