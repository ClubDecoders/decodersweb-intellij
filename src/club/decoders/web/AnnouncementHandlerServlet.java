package club.decoders.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.models.AnnouncementModel;

public class AnnouncementHandlerServlet extends HttpServlet {

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
		resp.sendRedirect("../index.html");
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String andate = req.getParameter("andate");
		String antitle = req.getParameter("antitle");
		String antext = req.getParameter("antext");
		String anurl=req.getParameter("anurl");
		String anperson=req.getParameter("anperson");
		if(anurl == "" || anurl == null || anurl.isEmpty())
		{
			anurl = " ";
		}
		String anId=req.getParameter("anId");
		AnnouncementModel anmodel=new AnnouncementModel(andate, antitle, antext, anurl, anperson,anId);
		String status="";
		if(DatastoreAdmin.insertHackathonAnnouncement(anmodel))
		{
			status = "Announcement posted successfully!";
		}
		else
		{
			status = "Sorry, Announcement was not posted!";
		}
		RequestDispatcher requestDispatcher = getServletConfig().getServletContext().getRequestDispatcher("/_dcdrad_/index.jsp");
		req.setAttribute("status", status);
		requestDispatcher.forward(req, resp);
		
	}
	

}
