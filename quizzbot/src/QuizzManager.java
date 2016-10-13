

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

public class QuizzManager {

	public static int setQuestion(String author, String question, String answer) throws SQLException{
		String sql = "INSERT INTO public.\"QUIZZ\"(\"AUTHOR\", \"QUESTION\", \"ANSWER\", \"USED\", \"VALID\") VALUES (?, ?, ?, ?, ?) RETURNING \"ID\";";
		PreparedStatement st = PostgreSQLJDBC.getConnexion().prepareStatement(sql);
		st.setString(1, author);
		st.setString(2, question);
		st.setString(3, answer);
		st.setInt(4, 0);
		st.setBoolean(5, true);
		
		ResultSet rs = st.executeQuery();
		
		int ret = -2;
		
		if(rs.next()){
			ret = rs.getInt("ID");
		}
		
		return ret;
		
	}
	
	public static int countRow() throws SQLException{
		String sql = "SELECT COUNT(*) AS total FROM \"QUIZZ\" WHERE \"VALID\" = TRUE;";
		PreparedStatement st = PostgreSQLJDBC.getConnexion().prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		int ret = -2;
		if(rs.next()){
			ret = rs.getInt("total");
		}
		return ret;

	}
	
	public static Vector<Question> getAllQuestions() throws SQLException{
		String sql = "SELECT \"ID\", \"AUTHOR\", \"QUESTION\", \"ANSWER\", \"USED\" FROM public.\"QUIZZ\" WHERE \"VALID\" = TRUE;";
		PreparedStatement st = PostgreSQLJDBC.getConnexion().prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		Vector<Question> vec = new Vector<Question>();
		while(rs.next()){
			Question question = new Question(rs.getString("AUTHOR"), rs.getString("QUESTION"), rs.getString("ANSWER"), rs.getInt("USED"), rs.getInt("ID"));
				vec.add(question);
		}
		
		return vec;
		
	}
	
	public static int getUsed(int ID) throws SQLException{
		String sql = "SELECT \"USED\" FROM public.\"QUIZZ\" WHERE \"ID\" = ?;";
		PreparedStatement st = PostgreSQLJDBC.getConnexion().prepareStatement(sql);
		st.setInt(1, ID);
		ResultSet rs = st.executeQuery();
		int ret = -2;
		if(rs.next()){
			ret = rs.getInt("USED");
		}
		
		return ret;
		
	}
	
	
	public static void setUsed(int ID) throws SQLException{
		String sql = "UPDATE public.\"QUIZZ\" SET \"USED\"=? WHERE \"ID\" = ?;";
		PreparedStatement st = PostgreSQLJDBC.getConnexion().prepareStatement(sql);
		int used = getUsed(ID);
		st.setInt(1, used + 1);
		st.setInt(2, ID);
		
		st.executeUpdate();
	}
	
	public static void setNotValid(int ID) throws SQLException{
		String sql = "UPDATE public.\"QUIZZ\" SET \"VALID\"= false WHERE \"ID\" = ?;";
		PreparedStatement st = PostgreSQLJDBC.getConnexion().prepareStatement(sql);
		st.setInt(1, ID);
		st.executeUpdate();
	}
	
	
}
