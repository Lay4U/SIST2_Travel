package travel.community.travelreview;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/community/travelreview/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Edit.java

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/travelreview/edit.jsp");
		dispatcher.forward(req, resp);
	}

}
