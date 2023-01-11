package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TxTest02 {

	public static void main(String[] args) {
		Connection conn = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			
			String url = "jdbc:mariadb://192.168.10.125:3307/webdb?charset=utf8";
			conn = DriverManager.getConnection(url, "webdb", "webdb");
			
			txCreateDepartmentAndEmployee(conn, "영업1", null);
			txCreateDepartmentAndEmployee(conn, "영업2", "마이콜");
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패:" + e);
		} catch (SQLException e) {
			System.out.println("error:" + e);
		} finally {
			try {
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void txCreateDepartmentAndEmployee(
		Connection conn,
		String deptName,
		String empName) throws SQLException {
		try {
			// begin transaction
			conn.setAutoCommit(false);
			
			//DML1
			String sql1 = "insert into dept values (null, ?)";
			PreparedStatement pstmt1 = conn.prepareStatement(sql1);
			pstmt1.setString(1, deptName);
			pstmt1.executeUpdate();
			pstmt1.close();
			
			//Last ID(no)
			String sql2 = "select last_insert_id() from dual";
			PreparedStatement pstmt2 = conn.prepareStatement(sql2);
			ResultSet rs = pstmt2.executeQuery();
			Long deptNo = rs.next() ? rs.getLong(1) : 0;
			rs.close();
			pstmt2.close();
			
			//DML2
			String sql3 = "insert into emp values (null, ?, ?)";
			PreparedStatement pstmt3 = conn.prepareStatement(sql3);
			pstmt3.setString(1, empName);
			pstmt3.setLong(2, deptNo);
			pstmt3.executeUpdate();
			pstmt3.close();
			
			conn.commit();
		} catch (SQLException e) {
			conn.rollback();
			e.printStackTrace();
		} finally {
			// end transaction
			conn.setAutoCommit(true);
		}
	}
}
