package biz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import vo.MemberVO;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/countdown")
public class CartCountDownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CartDAO cartDao = new CartDAO();
       
    public CartCountDownServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter ps = response.getWriter();

		String cardIdStr = request.getParameter("id");
		
		System.out.println(cardIdStr);
		
		int cardId = 0;
		try {
			cardId = Integer.parseInt(cardIdStr);
		} catch (Exception e) {
			ps.print("<script>alert('실패')</script>");
			ps.print("<script>history.back()</script>");
			return;
		}
		
		int result = this.cartDao.countDown(cardId);
		
		response.sendRedirect("html/cart/veiwshoping.jsp");
	}
}
