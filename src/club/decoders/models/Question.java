package club.decoders.models;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.appengine.ExistingDecodersResourceException;

public class Question {
	
	int qid;
	String problem;
	String solution;
	/**
	 * @param qid
	 * @param problem
	 * @param solution
	 */
	public Question(int qid, String problem, String solution) {
		this.qid = qid;
		this.problem = problem;
		this.solution = solution;
	}
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) throws ExistingDecodersResourceException {
		if(DatastoreAdmin.doesQIDExist(qid))
		{
			throw new ExistingDecodersResourceException(qid);
		}
		else
		{
			this.qid = qid;
		}
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public String getSolution() {
		return solution;
	}
	public void setSolution(String solution) {
		this.solution = solution;
	}
}
