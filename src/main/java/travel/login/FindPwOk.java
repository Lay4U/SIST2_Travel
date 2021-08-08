package travel.login;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * @author 문지원
 * pw를 찾는 클래스

	MemberDAO dao	DB작업을 위한 DAO 객체
	MemberDTO dto	DB 결과를 저장하기 위한 DTO 객체
	String result	result 값이 null이면 pw 찾는 페이지로 보낸다. null이 아니면 pw를 보여준다. 

 */
@WebServlet("/login/findpwok.do")
public class FindPwOk extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        MemberDAO dao = new MemberDAO();
        MemberDTO dto = new MemberDTO();

        dto.setId(req.getParameter("id"));
        dto.setEmail(req.getParameter("email"));
        System.out.println(req.getParameter("id"));
        System.out.println(req.getParameter("email"));
        String result = dao.findPw(dto);

        if (result != null) {
            req.setAttribute("pw", result);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/login/findpwok.jsp");
            dispatcher.forward(req, resp);
//            resp.sendRedirect("/SIST2_Travel/WEB-INF/views/login/findidok.jsp");
        } else {
//            resp.sendRedirect("/SIST2_Travel/WEB-INF/views/login/findid.jsp");
            RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/login/findpw.jsp");
            dispatcher.forward(req, resp);
        }
//
//        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/login/findidok.jsp");
//        dispatcher.forward(req, resp);
    }

}
