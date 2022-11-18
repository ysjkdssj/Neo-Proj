package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;
import vo.MemberVO;
import vo.ProductVO;

public class ProductDAO {
	public ProductDAO() {
	}

	public ProductVO getProduct(int productId) {
		ProductVO vo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM product WHERE product_id=?";
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new ProductVO(
						rs.getInt("product_id"),
						rs.getString("product_name"),
						rs.getInt("product_price"),
						rs.getString("product_image_url")
				);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("getProduct : error");
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return vo;
	}
	
	public ArrayList<ProductVO> getProductList(String category) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM product WHERE product_category=?";
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				productList.add(new ProductVO(
								rs.getInt("product_id"),
								rs.getString("product_name"),
								rs.getInt("product_price"),
								rs.getString("product_image_url")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("getProductList error");
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return productList;
	}

}
