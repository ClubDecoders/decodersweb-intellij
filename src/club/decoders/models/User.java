package club.decoders.models;

public class User {
	
	private String usn; 
	private String name;
	private String branch;
	private String semester;
	private String email;
	private String phone;
	private String password;
	private String confirm;
	/**
	 * @param usn
	 * @param name
	 * @param branch
	 * @param semester
	 * @param email
	 * @param phone
	 * @param password
	 * @param confirm
	 */
	public User(String usn, String name, String branch, String semester,
			String email, String phone, String password, String confirm) {
		this.usn = usn;
		this.name = name;
		this.branch = branch;
		this.semester = semester;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.confirm = confirm;
	}
	public User()
	{
		this.usn = "NA";
		this.name = "NA";
		this.branch = "NA";
		this.semester = "NA";
		this.email = "NA";
		this.phone = "NA";
		this.password = "NA";
		this.confirm = "NA";
	}
	/**
	 * @return the usn
	 */
	public String getUsn() {
		return usn;
	}
	/**
	 * @param usn the usn to set
	 */
	public void setUsn(String usn) {
		this.usn = usn;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the branch
	 */
	public String getBranch() {
		return branch;
	}
	/**
	 * @param branch the branch to set
	 */
	public void setBranch(String branch) {
		this.branch = branch;
	}
	/**
	 * @return the semester
	 */
	public String getSemester() {
		return semester;
	}
	/**
	 * @param semester the semester to set
	 */
	public void setSemester(String semester) {
		this.semester = semester;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the confirm
	 */
	public String getConfirm() {
		return confirm;
	}
	/**
	 * @param confirm the confirm to set
	 */
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	

}
