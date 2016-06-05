package club.decoders.models;

public class AnnouncementModel implements Comparable<AnnouncementModel> {

	private String andate;
	private String antitle;
	private String antext;
	private String anurl;
	private String anperson;
	private String anId;

	/**
	 * @param andate
	 * @param antitle
	 * @param antext
	 * @param anurl
	 * @param anperson
	 * @param anId
	 */
	public AnnouncementModel(String andate, String antitle, String antext,
			String anurl, String anperson, String anId) {
		this.andate = andate;
		this.antitle = antitle;
		this.antext = antext;
		this.anurl = anurl;
		this.anperson = anperson;
		this.anId = anId;
	}

	/**
	 * @return the anId
	 */
	public String getAnId() {
		return anId;
	}

	/**
	 * @param anId
	 *            the anId to set
	 */
	public void setAnId(String anId) {
		this.anId = anId;
	}

	/**
	 * @return the andate
	 */
	public String getAndate() {
		return andate;
	}

	/**
	 * @param andate
	 *            the andate to set
	 */
	public void setAndate(String andate) {
		this.andate = andate;
	}

	/**
	 * @return the antitle
	 */
	public String getAntitle() {
		return antitle;
	}

	/**
	 * @param antitle
	 *            the antitle to set
	 */
	public void setAntitle(String antitle) {
		this.antitle = antitle;
	}

	/**
	 * @return the antext
	 */
	public String getAntext() {
		return antext;
	}

	/**
	 * @param antext
	 *            the antext to set
	 */
	public void setAntext(String antext) {
		this.antext = antext;
	}

	/**
	 * @return the anurl
	 */
	public String getAnurl() {
		return anurl;
	}

	/**
	 * @param anurl
	 *            the anurl to set
	 */
	public void setAnurl(String anurl) {
		this.anurl = anurl;
	}

	/**
	 * @return the anperson
	 */
	public String getAnperson() {
		return anperson;
	}

	/**
	 * @param anperson
	 *            the anperson to set
	 */
	public void setAnperson(String anperson) {
		this.anperson = anperson;
	}

	@Override
	public int compareTo(AnnouncementModel arg0) {
		// TODO Auto-generated method stub
		if (this.getAndate().compareTo(arg0.getAndate()) > 0) {
			return -1;
		} else if (this.getAndate().compareTo(arg0.getAndate()) < 0) {
			return 1;
		} else {
			return 0;
		}

	}
}
