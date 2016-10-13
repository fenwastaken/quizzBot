

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

public class QuizzManagerSQL {

	public static void setQuestion(String author, String question, String answer) throws SQLException{
		String sql = "INSERT INTO QUIZZ(AUTHOR, QUESTION, ANSWER, USED) VALUES (?, ?, ?, ?);";
		PreparedStatement st = SQLite.getConnexion().prepareStatement(sql);
		st.setString(1, author);
		st.setString(2, question);
		st.setString(3, answer);
		st.setInt(4, 0);
		st.executeUpdate();
		
		st.close();
	}
	
	public static int countRow() throws SQLException{
		String sql = "SELECT COUNT(*) AS total FROM QUIZZ WHERE VALID = 1;";
		PreparedStatement st = SQLite.getConnexion().prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		int ret = -2;
		if(rs.next()){
			ret = rs.getInt("total");
		}
		st.close();
		return ret;

	}
	
	public static Vector<Question> getAllQuestions() throws SQLException{
		String sql = "SELECT ID, AUTHOR, QUESTION, ANSWER, USED FROM QUIZZ WHERE VALID = 1;";
		PreparedStatement st = SQLite.getConnexion().prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		Vector<Question> vec = new Vector<Question>();
		while(rs.next()){
			Question question = new Question(rs.getString("AUTHOR"), rs.getString("QUESTION"), rs.getString("ANSWER"), rs.getInt("USED"), rs.getInt("ID"));
				vec.add(question);
		}
		
		st.close();
		return vec;
		
	}
	
	public static int getUsed(int ID) throws SQLException{
		String sql = "SELECT USED FROM QUIZZ WHERE ID = ?;";
		PreparedStatement st = SQLite.getConnexion().prepareStatement(sql);
		st.setInt(1, ID);
		ResultSet rs = st.executeQuery();
		int ret = -2;
		if(rs.next()){
			ret = rs.getInt("USED");
		}
		
		st.close();
		return ret;
		
	}
	
	
	public static void setUsed(int ID, int USED) throws SQLException{
		String sql = "UPDATE QUIZZ SET USED=? WHERE ID = ?;";
		PreparedStatement st = SQLite.getConnexion().prepareStatement(sql);
		st.setInt(1, USED + 1);
		st.setInt(2, ID);
		st.executeUpdate();
		st.close();
	}
	
	public static void setNotValid(int ID) throws SQLException{
		String sql = "UPDATE QUIZZ SET VALID = 0 WHERE ID = ?;";
		PreparedStatement st = SQLite.getConnexion().prepareStatement(sql);
		st.setInt(1, ID);
		st.executeUpdate();
		st.close();
	}
	
	
}
