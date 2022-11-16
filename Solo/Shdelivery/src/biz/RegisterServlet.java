package biz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import vo.MemberVO;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		MemberDAO dao = new MemberDAO();
		boolean isExist = dao.existID(request.getParameter("id"));
		int result = 0;
		
		if(isExist) {
			out.println("<script> alert('이미 존재하는 ID 입니다. 다시 입력해주세요.'); history.back(); </script>");
		} else {
			MemberVO data = new MemberVO();
			data.setMemberId(request.getParameter("id"));
			data.setMemberPwd(request.getParameter("pwd"));
			
			result = dao.insertMember(data);
			if(result > 0) {
				HttpSession session = request.getSession();
				session.setAttribute("loginOK", data);
				out.println("<script> alert('회원가입에 성공했습니다.'); </script>");
			} else {
				out.println("<script> alert('회원가입에 실패했습니다.'); </script>");
			}
			
			response.sendRedirect("/html/logfornt/log.jsp");
		}
	}
}
