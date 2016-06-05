package club.decoders.api;

import club.decoders.appengine.DatastoreAdmin;
import club.decoders.models.Member;
import club.decoders.models.User;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public class UserValidation{

    /**
     *
     * @param usn
     * @return User(POJO) object
     * Call this method only after verifying that the User is a valid user. Username and password are not valid
     * NullPointerException will be thrown and application may promptly crash.
     */
    @WebMethod
    public User getValidUser(String usn)
    {
        return DatastoreAdmin.retrieveUser(usn);
    }

    /**
     *
     * @param usn
     * @param password
     * @return if valid user
     * Call this method before going for obtaining the User object.
     */
    @WebMethod
    public boolean isValidUser(String usn,String password)
    {
        return DatastoreAdmin.isLoginVerified(usn,password);
    }

    /**
     *
     * @param usn
     * @param password
     * @return if valid member
     * Call this method before obtaining a valid Member object
     */
    @WebMethod
    public boolean isValidMember(String usn,String password)
    {
        return DatastoreAdmin.isMember(usn, password);
    }

    /**
     *
     * @param usn
     * @return Member Object
     * Call this method only after successful verification.
     * Do not use it directly.
     *
     */
    @WebMethod
    public Member getValidMember(String usn)
    {
        return DatastoreAdmin.retrieveMember(usn);
    }

}