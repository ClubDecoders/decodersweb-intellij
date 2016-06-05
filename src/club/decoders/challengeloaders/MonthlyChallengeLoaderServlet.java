package club.decoders.challengeloaders;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.models.Member;
import club.decoders.models.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by anurag on 26/5/16.
 */
public class MonthlyChallengeLoaderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendError(404);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String usn = request.getParameter("usn");
            if(usn == null || usn.isEmpty())
                response.sendError(404);
            else
            {
                Member user = DatastoreAdmin.retrieveMember(usn);
                RequestDispatcher dispatcher = getServletConfig().getServletContext().getRequestDispatcher("/dashitems/monthlychallenge.jsp");
                request.setAttribute("user",user);
                dispatcher.forward(request,response);
            }
    }
}
