package club.decoders.models;

import java.util.ArrayList;

public class Member {

	private String usn;
	private String name;
	private String branch;
	private String semester;
	private String email;
	private String phone;
	private String password;
	private int score;
	private ArrayList<Integer> solvedQNo;

	/**
	 * @param usn
	 * @param name
	 * @param branch
	 * @param semester
	 * @param email
	 * @param phone
	 * @param password
	 */
	public Member(String usn, String name, String branch, String semester,
			String email, String phone, String password) {
		this.usn = usn;
		this.name = name;
		this.branch = branch;
		this.semester = semester;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.score = 0;
		this.solvedQNo = new ArrayList<>();

	}
	public Member()
	{
		this.usn ="NA";
		this.name ="NA";
		this.branch ="NA";
		this.semester ="NA";
		this.email ="NA";
		this.phone ="NA";
		this.password ="NA";
		this.score = 0;
		this.solvedQNo = new ArrayList<>();
	}

	public String getUsn() {
		return usn;
	}

	public void setUsn(String usn) {
		this.usn = usn;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public ArrayList<Integer> getSolvedQNo() {
		return solvedQNo;
	}

	public void setSolvedQNo(ArrayList<Integer> solvedQNo) {
		this.solvedQNo = solvedQNo;
	}

	public void updateScoreCount(int diff) {
		this.score = this.score + diff;
	}

	public void updateQuestionSolvedCount(int qno) {
		solvedQNo.add(qno);
	}

	public double getMemberProgress(int totalQuestionCount) {
		return (solvedQNo.size() / totalQuestionCount) * 100;
	}
}
