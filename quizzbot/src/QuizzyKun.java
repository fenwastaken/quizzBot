

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Vector;

import org.jibble.pircbot.IrcException;
import org.jibble.pircbot.PircBot;

public class QuizzyKun extends PircBot{

	PircBot bot = null;

	boolean activated = false;
	Vector<Question> questions  = null;
	Vector<Question> alreadyAsked  = new Vector<Question>();	
	Question activeQuestion = null;
	HashMap<String, Integer> scores = new HashMap<String, Integer>();
	Timer activeTimer = null;
	
	String owner = "";
	String chan = "";
	String irc = "";
	String botName = "";
	
	int idleChecker = 1;

	public QuizzyKun(String irc, String channel, String owner, String botName){
		
		this.botName = botName;
		this.owner = owner;
		this.irc = irc;
		this.chan = channel;
		this.setAutoNickChange(true);
		this.setName(botName);
		initiateQuestions();
		bot = this;
		try {
			this.connect(irc);
			this.joinChannel(chan);
		} catch (IOException | IrcException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void onMessage(String channel, String sender, String login, String hostname, String message){

		idleChecker++;

		if(activeQuestion != null){
			check(channel, message, sender);
		}

		setLame(channel, message, sender);
		quizz(channel, message, sender);
		questionNumber(channel, message, sender);
		resetScores(channel, message, sender);
	}

	public void onPrivateMessage(String sender, String login, String hostname, String message){
		addQestion(message, sender);
		initiateQuestions();
	}

	public void resetScores(String channel, String message, String sender){
		if(message.equals("!reset") && sender.equals("Duskie")){
			scores.clear();
			sendMessage(channel, "Scores have been reset.");
		}
	}
	
	public void quizz(String channel, String message, String sender){
		if(message.startsWith("!quizz ")){
			String param = cuter(message, " ").elementAt(0);
			if(param.equals("on") && activated == false){
				activated = true;
				sendMessage(channel, "Quizz on!");
				start(channel);
			}
			else if(param.equals("off") && activated == true){
				activated = false;
				sendMessage(channel, "Quizz off!");

			}
		}

	}

	public void setLame(String channel, String message, String sender){
		if(message.equals("!lame") && sender.equals("Duskie")){
			try {
				QuizzManager.setNotValid(activeQuestion.getId());
				sendMessage(channel, "That question was removed [" + activeQuestion.getId()+"]");
				initiateQuestions();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void addQestion(String message, String sender){

		if(message.startsWith("!addQuestion") || message.startsWith("!addQuestion")){

				Vector<String> param = cuter(message, "|");
				if(param.size() == 2){
					try {
						int ID = QuizzManager.setQuestion(sender, param.elementAt(0), param.elementAt(1));
						sendMessage(sender, "Your question was added: #" + ID + ".");
						sendMessage(chan, "A new question was added to the database!");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				else{
					sendMessage(sender, "Your question is not complete: " + param.toString());
				}
		}

	}

	public void questionNumber(String channel, String message, String sender){
		if(message.equals("!question")){
			try {
				int number = QuizzManager.countRow();
				initiateQuestions();
				sendMessage(channel, "There currently is " + number + " questions in the database.");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public void initiateQuestions(){
		try {
			questions = QuizzManager.getAllQuestions();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void winner(String winner){
		if(scores.containsKey(winner)){
			scores.put(winner, scores.get(winner) + 1);
		}
		else{
			scores.put(winner, 1);
		}
	}

	public void getQuestion(){
		try {
			if(alreadyAsked.size() < questions.size()){
				int nb = questions.size();
				DiceType dice = new DiceType(nb - 1, 1);
				Question newQuestion = questions.elementAt(dice.roll().toInt());
				while(alreadyAsked.contains(newQuestion)){
					newQuestion = questions.elementAt(dice.roll().toInt());
				}
				activeQuestion = newQuestion;
				alreadyAsked.add(activeQuestion);
				QuizzManager.setUsed(activeQuestion.getId());

			}
			else{
				sendMessage(chan, "All questions have been asked.");
				alreadyAsked.removeAllElements();
				activated = false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void start(String channel){
		if(activated){
			getQuestion();
			int nb;
			try {
				nb = QuizzManager.countRow();
				sendMessage(channel, "Get ready for the next question by " + activeQuestion.getAuthor() + "! [out of " + nb + " questions]");
				sendMessage(channel, "Question: " + activeQuestion.getQuestion());
				timerGo();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
			sendMessage(channel, "Quizz is over!");
		}
	}

	public void timerGo(){
		Timer t = new Timer();
		t.start();
	}

	public static Vector<String> cuter(String message, String separator){
		Vector<String> vec = new Vector<String>();
		int start = message.indexOf(separator) + 1;
		int stop = message.indexOf(separator, start);
		String ret = "";

		while(stop <= message.length() && stop != -1){
			ret = message.substring(start, stop);
			vec.add(ret);
			start = stop + 1;
			stop = message.indexOf(separator, start);
		}

		ret = message.substring(start);
		vec.add(ret);

		return vec;
	}

	public void next(){
		if(activated){
			if(idleChecker > 0){
				idleChecker = 0;
				start(chan);
			}
			else{
				sendMessage(chan, "No one is playing, let's stop here.");
				activated = false;
			}

		}
	}

	public void check(String channel, String message, String sender){
		if(message.toLowerCase().indexOf(activeQuestion.getAnswer().toLowerCase()) != -1){
			if(!sender.equals(activeQuestion.getAuthor())){
				activeTimer.over = true;
				activeTimer.finish();
				activeTimer = null;
				sendMessage(channel, sender + " found the answer! it was " + activeQuestion.getAnswer());
				winner(sender);
				sendMessage(channel, sender + " has " + scores.get(sender) + " points!");

				String result = "";			
				for(Entry<String, Integer> key : scores.entrySet()){
					result += key.getKey() + ": " + key.getValue() + ", ";
				}
				sendMessage(channel, "here's the results: " + result);
				if(activated){
					start(channel);
				}
			}
			else{
				sendMessage(channel, "That's your own question dummy!");
			}
		}
	}

	public class Timer extends Thread {
		public boolean over = false;

		public void run() {
			activeTimer = this;
			String tQuestion = activeQuestion.getClue();
			String tAnswer = activeQuestion.getAnswer();
			try {
				if(!over){
					sendMessage(chan, "2 minutes to go!");
				}
				Timer.sleep(60000);
				if(!over){
					bot.sendMessage(chan, "Not found yet? Here's a clue: " + tQuestion);
				}
				Timer.sleep(60000);
				if(!over){
					activeQuestion = null;
					bot.sendMessage(chan, "Too late! The answer was: " + tAnswer + ".");
					activeTimer = null;
				}
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block

			}

			if(!over){
				next();
			}
			finish();
		}

		public void finish(){
			this.interrupt();
		}

		public void main(String args[]) {
			Timer timer = new Timer();
			activeTimer = timer;
			activeTimer.start();

		}

	}

}
