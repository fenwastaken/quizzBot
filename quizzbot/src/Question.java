

public class Question {

	String author;
	String question;
	String answer;
	String clue;
	int counter;
	int id;
	
	public Question(String author, String question, String answer, int counter, int id) {
		
		super();
		this.author = author;
		this.question = question;
		this.answer = answer;
		this.counter = counter;
		this.id = id;
		
		this.clue = clue(answer);
		
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getCounter() {
		return counter;
	}

	public void setCounter(int counter) {
		this.counter = counter;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getClue() {
		return clue;
	}

	public void setClue(String clue) {
		this.clue = clue;
	}

	public String clue(String answer){
		
		String[] clue = answer.split("");
		String ret = "";
		for(int i = 0 ; i < clue.length ; i++){
			int ran = (int)(Math.random() * 100 + 1);
			if(!clue[i].equals(" ") && ran > 50){
				clue[i] = ".";
			}
			ret = ret + clue[i];
		}
		return ret;
	}
	
	
	
}
