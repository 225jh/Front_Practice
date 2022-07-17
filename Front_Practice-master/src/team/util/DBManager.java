package team.util;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			// jdbc/myoracle이란 이름의 객체를 찾아서 DataSource가 받는다.
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			//ds가 생성되었으므로 Connection을 구한다.
			conn = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//select를 수행한 후 리소스 해제를 위한 메소드
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			conn.close();
			pstmt.close();
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//DML(insert, update, delete)를 수행한 후 리소스 해제를 위한 메소드
	public static void close(Connection conn, PreparedStatement pstmt) {
		try {
			conn.close();
			pstmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
