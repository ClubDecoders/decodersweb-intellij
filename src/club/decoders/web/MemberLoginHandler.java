package club.decoders.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.models.Member;

@SuppressWarnings("serial")
public class MemberLoginHandler extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.sendError(404);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String usn = req.getParameter("usn");
		String password = req.getParameter("password");
		if(DatastoreAdmin.isMember(usn, password))
		{
			Member member = DatastoreAdmin.retrieveMember(usn);
			RequestDispatcher requestDispatcher = getServletConfig().getServletContext().getRequestDispatcher("/memberdash.jsp");
			req.setAttribute("member", member);
			requestDispatcher.forward(req,resp);
		}
		else
		{
			RequestDispatcher requestDispatcher = getServletConfig().getServletContext().getRequestDispatcher("/memb_login.jsp");
			req.setAttribute("status", "Username/Password Incorrect");
			requestDispatcher.forward(req,resp);
		}
	}
	
}
