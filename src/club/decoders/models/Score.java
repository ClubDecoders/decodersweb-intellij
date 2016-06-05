package club.decoders.models;

public class Score {
	
	private String usn;
	private int problemsSolvedCount;
	private int score;
	
	public Score(String usn,int problemsSolvedCount,int score){
		this.usn = usn;
		this.score = score;
		this.problemsSolvedCount = problemsSolvedCount;
	}

	/**
	 * @return the score
	 */
	public int getScore() {
		return score;
	}

	/**
	 * @param score the score to set
	 */
	public void setScore(int score) {
		this.score = score;
	}

	/**
	 * @return the problemsSolvedCount
	 */
	public int getProblemsSolvedCount() {
		return problemsSolvedCount;
	}

	/**
	 * @param usn the usn to set
	 */
	public void setUsn(String usn) {
		this.usn = usn;
	}

}
