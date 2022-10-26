package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class bodDAO {
	private Connection conn;
	private ResultSet rs; 
	
	public bodDAO() {
		try {
			String dbURL = "jdbc:mysql://192.168.0.49:3306/projectdb";
			String dbID = "scott";
			String dbPassword = "tiger";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //DB 오류 
	}
	
	public int getNext() {
		String SQL = "SELECT bodID FROM bod ORDER BY bodID DESC"; //ID받기
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류 
	}

	public int write(String bodTitle, String userID, String bodContent){
		String SQL = "INSERT INTO bod VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bodTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bodContent);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류 
	}
	
	public ArrayList<bod> getList(int pageNumber){
		String SQL = "SELECT * FROM bod WHERE bodID < ? AND bodAvailable = 1 ORDER BY bodID DESC LIMIT 10";
		ArrayList<bod> list = new ArrayList<bod>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber -1)*10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bod bbs = new bod();
				bbs.setBodID(rs.getInt(1));
				bbs.setBodTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBodDate(rs.getString(4));
				bbs.setBodContent(rs.getString(5));
				bbs.setBodAvailable(rs.getInt(6));
				list.add(bbs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; 
	}
	// 해당 페이지로 넘어갈 수 있는지 검사 
	public boolean nextPage(int pageNumber){
		String SQL = "SELECT * FROM bod WHERE bodID < ? AND bodAvailable = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber -1)*10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false; 
	}
	
	public bod getbod(int bodID)
    {
		String SQL = "SELECT * FROM bod WHERE bodID = ?"; 
        try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, bodID);
				rs = pstmt.executeQuery();
				if (rs.next())
				{
	                bod bbs = new bod();
	                bbs.setBodID(rs.getInt(1));
	                bbs.setBodTitle(rs.getString(2));
	                bbs.setUserID(rs.getString(3));
	                bbs.setBodDate(rs.getString(4));
	                bbs.setBodContent(rs.getString(5));
	                bbs.setBodAvailable(rs.getInt(6));
	                return bbs;
		        }
        } catch (Exception e) {
        	e.printStackTrace();
        }
        return null; 
    }
	
	public int update(int bodID, String bodTitle, String bodContent) {	
		String SQL = "UPDATE bod SET bodTitle = ?, bodContent = ? WHERE bodID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bodTitle);
			pstmt.setString(2, bodContent);
			pstmt.setInt(3, bodID);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류 
	}

	public int delete(int bodID) {
		String SQL = "UPDATE bod SET bodAvailable = 0 WHERE bodID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bodID);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류 
	}
}
