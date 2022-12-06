package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;
import vo.CartVO;
import vo.ProductVO;

public class CartDAO{
	private ProductDAO productDao = new ProductDAO();
	
	public CartDAO() {
	}
	
	public ArrayList<CartVO> getCartList(String memberId) {
		
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM cart WHERE member_id=?";
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CartVO vo = new CartVO();
				ProductVO productVO = this.productDao.getProduct(rs.getInt("product_id"));
				
				vo = new CartVO();
				vo.setCart_id(rs.getInt("cart_id"));
				vo.setCart_count(rs.getInt("cart_count"));
				vo.setProduct(productVO);
				vo.setMember_id(rs.getString("member_id"));
				
				cartList.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("checkLoginUser : sql error");
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return cartList;
	}
	
	public int createCart(int productId, int count, String memberId) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO cart(cart_id, cart_count, product_id, member_id) values(cart_id_sequence.NEXTVAL,?,?,?)";
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, count);
			pstmt.setInt(2,productId);
			pstmt.setString(3, memberId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int deleteCart(int cartId) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "DELETE FROM cart WHERE cart_id = ?";
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cartId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int countUp(int cartId) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "UPDATE cart SET cart_count=cart_count+1 WHERE cart_id=?";
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cartId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	public int countDown(int cartId) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "UPDATE cart SET cart_count=cart_count-1 WHERE cart_id=?";
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cartId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}