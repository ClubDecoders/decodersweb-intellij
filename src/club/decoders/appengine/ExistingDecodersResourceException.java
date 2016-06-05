package club.decoders.appengine;

@SuppressWarnings("serial")
public class ExistingDecodersResourceException extends Exception {
	
	private String errorMessage;

	public ExistingDecodersResourceException(int qid) {
		// TODO Auto-generated constructor stub
		errorMessage = "Qid already exists! Please choose another QID";
		
	}

	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return errorMessage;
	}

	@Override
	public synchronized Throwable getCause() {
		// TODO Auto-generated method stub
		return super.getCause();
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "[ExistingResourceException:Attempt to override an existing Resource in DB]";
	}

	@Override
	public void printStackTrace() {
		// TODO Auto-generated method stub
		super.printStackTrace();
	}
	
	

}
