package club.decoders.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.models.Member;
import club.decoders.utils.PasswordUtility;

@SuppressWarnings("serial")
public class MemberRegistrationHandler extends HttpServlet {

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
		String name = req.getParameter("name");
		String branch = req.getParameter("branch");
		String semester = req.getParameter("sem");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String password = req.getParameter("password");
		String confirm = req.getParameter("confirm");
		String dispatchUrl = "/_dcdrad_/index.jsp";
		String status;
		if(PasswordUtility.matchPassword(password, confirm))
		{
			Member member= new Member(usn,name,branch,semester,email,phone,password);
			DatastoreAdmin.insertMember(member);
			dispatchUrl = "/_dcdrad_/memberreg.jsp";
			status = "Successfully registered a member!";
		}
		else
		{
			dispatchUrl = "/_dcdrad_/memberreg.jsp";
			status = "Passwords do not match";
		}
		RequestDispatcher rd= getServletConfig().getServletContext().getRequestDispatcher(dispatchUrl);
		req.setAttribute("status", status);
		rd.forward(req, resp);
	}
	
	

}
