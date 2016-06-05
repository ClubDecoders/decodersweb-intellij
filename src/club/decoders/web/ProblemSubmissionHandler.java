package club.decoders.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.models.Question;

@SuppressWarnings("serial")
public class ProblemSubmissionHandler extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();
		out.println("Wrong Method Call Encountered!");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String qid=req.getParameter("qid");
		String problem=req.getParameter("problem");
		String solution=req.getParameter("solution");
		solution = solution.replace("<", "&lt;").replace(">", "&gt;");
		
		DatastoreAdmin.insertProblem(new Question(Integer.parseInt(qid),problem,solution));
		RequestDispatcher rd=getServletConfig().getServletContext().getRequestDispatcher("/_dcdrad_/problemForm.jsp");
		req.setAttribute("status", "Problem Submitted Successfully!");
		rd.forward(req, resp);
	}
	
}
