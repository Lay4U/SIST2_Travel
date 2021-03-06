package travel.community.question;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 게시글 수정 서블릿 
 * @author 이준희
 *
 */
@WebServlet("/community/question/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CheckMember cm = new CheckMember();
		cm.check(req,resp);
		
		String questionseq = req.getParameter("questionseq");

		//2.
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.get(questionseq); // 이미 view 때문에 만들었엇음 - 재사용가능 

		//3.
		req.setAttribute("dto", dto);


		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/question/edit.jsp");
		dispatcher.forward(req, resp);

	}//doGet

}//class