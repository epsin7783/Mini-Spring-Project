package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet; // ����Ű : ctrl + shift + 'o'

public class UserDAO {
	private Connection conn; //db ���� ��ü 
	private PreparedStatement pstmt;
	private ResultSet rs; // db ����� ��� ��ü
	
	public UserDAO() { // dao �����ڿ��� db connection 
		try {
			String dbURL = "jdbc:mysql://192.168.0.49:3306/projectdb"; //mySQL ������ BBS DB ���� ���
			String dbID = "scott"; //����
			String dbPassword = "tiger"; //��й�ȣ
			Class.forName("com.mysql.jdbc.Driver"); //mysql�� ������ �����ִ� ���̺귯�� 
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	// �α��� ��� 
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID); //sql Injection ���� ��� ���� : 1��° ����ǥ�� userID �Է�
			rs = pstmt.executeQuery(); // ���� ���� 
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) // rs.getString(1) : select�� ù��° �÷�
					return 1; //�α��� ����
				else
					return 0; // ��й�ȣ Ʋ��
			}
			return -1; // ���̵� ���� 
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return -2; //DB ���� 
	}
	
	//ȸ�����Ա��
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES(?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate(); // 0�̻� ���� return�� ��� ���� 
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB����
	}
}