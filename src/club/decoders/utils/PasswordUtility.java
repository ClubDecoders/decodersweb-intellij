package club.decoders.utils;

public class PasswordUtility {
	
	public static boolean matchPassword(String pass,String conf)
	{
		if(pass.equals(conf))
			return true;
		else
			return false;
	}
	
	
}
