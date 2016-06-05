package club.decoders.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.decoders.appengine.DatastoreAdmin;

@SuppressWarnings("serial")
public class AdminLoginHandler extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String usn = req.getParameter("usn");
		String password = req.getParameter("password");
		if(DatastoreAdmin.isAdmin(usn, password))
		{
			String status = "Administrator "+usn;
			RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher("/_dcdrad_/index.jsp");
			req.setAttribute("adminstatus", status);
			rd.forward(req, resp);
		}
		else
		{
			String status = "<b style='color:red;'>This one is not an administrator!<b>";
			RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher("/_dcdrad_/adminlogin.jsp");
			req.setAttribute("adminstatus", status);
			rd.forward(req, resp);
		}
	}
	
	

}
