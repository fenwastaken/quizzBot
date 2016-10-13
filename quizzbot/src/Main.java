import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;
import java.util.Vector;


public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		normal();


	}

	public static void normal(){
		String irc;
		String channel;
		String owner;
		String botName;

		Scanner sc = new Scanner(System.in);

		System.out.println("irc?");
		irc = sc.nextLine();

		System.out.println("channel?");
		channel = sc.nextLine();

		System.out.println("owner?");
		owner = sc.nextLine();

		System.out.println("botName?");
		botName = sc.nextLine();
		
		sc.close();

		QuizzyKun quizzy = new QuizzyKun("irc.esper.net", "#heavenstower", "Duskie", "Robo");
	}
}
