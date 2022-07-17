package com.board.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.board.DTO.BoardVO;
import com.util.DBManager;

// DAO : DB와 어떻게 일 할 것인가? 에 대한 코드
public class BoardDAO {

	private BoardDAO() {
	}
	
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	//1. SELECT : 모든 게시글을 불러와 최근 순서로 리스트에 정렬되도록 하는 DAO
	public List<BoardVO> selectAllBoards(){
		String sql = "select * from board order by num desc";
		
		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO bVo = new BoardVO();
				//bVo의 setter에 값세팅 (rs가 타입변환 시켜줌)
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPwd(rs.getString("pwd"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				
				list.add(bVo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	//2. INSERT : 새로운 글 작성 시 DB에 저장
	public void insertBoard(BoardVO bVo) {
		String sql = "insert into board(num, name, email, pwd, title, content) "
				+"values(board_seq.nextval, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			//사전작업 : insertAction에서 bVo에 setter()로 값 세팅 필요
			pstmt.setString(1, bVo.getName());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getPwd());
			pstmt.setString(4, bVo.getTitle());
			pstmt.setString(5, bVo.getContent());
			
			pstmt.executeUpdate();

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	//3. UPDATE : 조회수 증가를 수정하여 DB에 저장
	public void updateReadCount(String num) {
		String sql = "update board set readcount=readcount+1 where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			
			pstmt.executeUpdate();//쿼리문 실행
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	//게시글 상세내용 보기 : 글번호(num)로 찾아옴
	public BoardVO selectOneBoardByNum(String num) {
		String sql = "select * from board where num=?";
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// try/catch문 밖에서 선언 해 주어야 return 가능
		BoardVO bVo = null; 
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			
			rs = pstmt.executeQuery(); //데이터 rs에 저장
			
			while(rs.next()) { // rs에 들어있는 정보를 bVo에 세팅
				bVo = new BoardVO();
				//VO의 setter의 매개변수 타입과 일치되게 저장할 것
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setPwd(rs.getString("pwd"));
				bVo.setEmail(rs.getString("email"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}
	
	//게시글 수정해서 DB에 저장
	public void updateBoard(BoardVO bVo) {
		String sql = "update board set name=?, email=?, pwd=?, "
				+"title=?, content=? where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			//pstmt 세팅 - VO setter에 저장된 정보 getter로 가져오기
			pstmt.setString(1, bVo.getName());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getPwd());
			pstmt.setString(4, bVo.getTitle());
			pstmt.setString(5, bVo.getContent());
			pstmt.setInt(6, bVo.getNum());
			
			pstmt.executeUpdate();//쿼리문 실행
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	//해당 글 수정,삭제 시 작성자 pwd와 일치하는지 체크[pwd와 글번호 매개변수로 받아옴]
	public BoardVO checkPwd(String pwd, String num) {
		//pwd와 글번호(num)가 일치해야 select문 이행됨
		String sql = "select * from board where pwd=? and where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO bVo = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, pwd);
			pstmt.setString(2, num);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				bVo = new BoardVO();
				
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPwd(rs.getString("pwd"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}
	
	//4. DELETE : 해당 글번호를 삭제하여 DB저장
	//매개변수 왜 String으로 받아오는지 확인(num은 int인데...)
	public void deleteBoard(String num) {
		String sql = "delete from board where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);//연결된DB에 sql문장 전달하기 위해 pstmt에 저장
			pstmt.setString(1, num);//pstmt 세팅해서 sql문 완성
			
			pstmt.executeUpdate();//쿼리문 실행

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
}
