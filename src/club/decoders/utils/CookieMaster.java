package club.decoders.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.models.User;

public class CookieMaster {
	
	public static Cookie createCookie(User user)
	{
		Cookie cookie = new Cookie("USN", user.getUsn());
		return cookie;
	}
	public static boolean setCookie(HttpServletResponse response,Cookie createdCookie)
	{
		response.addCookie(createdCookie);
		return true;
		
	}
	public static User getUserFromCookie(HttpServletRequest request,String usn)
	{
		Cookie[] tempcookies = request.getCookies();
		for(Cookie part:tempcookies)
		{
			if(part.getValue().equals(usn))
			{
				return DatastoreAdmin.retrieveUser(usn);
			}
		}
		return new User();
		
	}

}
