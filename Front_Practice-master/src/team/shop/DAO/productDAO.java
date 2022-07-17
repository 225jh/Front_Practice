package team.shop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import team.shop.DTO.productVO;
import team.util.DBManager;

//DAO : DB와 어떻게 일 할 것인가? 에 대한 코드
public class productDAO {

	private productDAO() {
	}
	
	private static productDAO instance = new productDAO();
	
	public static productDAO getInstance() {
		return instance;
	}
	
	//1. SELECT : 모든 게시글을 불러와 최근 순서로 리스트에 정렬되도록 하는 DAO
		public List<productVO> selectCategoryProducts(String categoryName){
			String sql = "select * from product where pCategory = ? order by pNum";
			
			List<productVO> list = new ArrayList<productVO>();
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, categoryName);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					productVO pVo = new productVO();
					//bVo의 setter에 값세팅 (rs가 타입변환 시켜줌)
					pVo.setpNum(rs.getInt("pNum"));
					pVo.setpName(rs.getString("pName"));
					pVo.setpPrice(rs.getInt("pPrice"));
					pVo.setpImg(rs.getString("pImg"));
					pVo.setpShortInfo(rs.getString("pShortInfo"));
					pVo.setpDetailInfo(rs.getString("pDetailInfo"));
					pVo.setpCategory(rs.getString("pCategory"));
					
					list.add(pVo);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
			return list;
		}

		public productVO selectOneProductBypNum(String pNum) {
			String sql = "select * from product where pNum=?";
			
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			// try/catch문 밖에서 선언 해 주어야 return 가능
			productVO pVo = null; 
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pNum);
				
				rs = pstmt.executeQuery(); //데이터 rs에 저장
				
				while(rs.next()) { // rs에 들어있는 정보를 bVo에 세팅
					pVo = new productVO();
					//VO의 setter의 매개변수 타입과 일치되게 저장할 것
					pVo.setpNum(rs.getInt("pNum"));
					pVo.setpName(rs.getString("pName"));
					pVo.setpPrice(rs.getInt("pPrice"));
					pVo.setpImg(rs.getString("pImg"));
					pVo.setpShortInfo(rs.getString("pShortInfo"));
					pVo.setpDetailInfo(rs.getString("pDetailInfo"));
					pVo.setpCategory(rs.getString("pCategory"));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
			return pVo;
		}
}
