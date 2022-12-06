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
@WebServlet("/createcart")
public class CartCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CartDAO cartDao = new CartDAO();
       
    public CartCreateServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter ps = response.getWriter();
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("loginOK");
		
		if(vo == null) {
			response.sendRedirect("/log.jsp");
		}

		String productIdStr = request.getParameter("product-id");
		String countStr = request.getParameter("product-count");

		System.out.println(productIdStr);
		System.out.println(countStr);
		
		int count = 0;
		int productId = 0;
		try {
			productId = Integer.parseInt(productIdStr);
			count = Integer.parseInt(countStr);
		} catch (Exception e) {
			ps.print("<script>history.back()</script>");
			return;
		}
		
		int result = this.cartDao.createCart(productId, count, vo.getMemberId());
		
		response.sendRedirect("html/cart/veiwshoping.jsp");
	}
}
