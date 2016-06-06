package club.decoders.utils;

import java.util.Random;

public class PasswordUtility {

    private static String usn;

    public static boolean matchPassword(String pass, String conf) {
        if (pass.equals(conf))
            return true;
        else
            return false;
    }

    public static String generateRandomPassword(String cusn) {

        //TODO Replace with an algorithm that generates secure passwords
        byte[] busn = cusn.getBytes();
        new Random().nextBytes(busn);
        return new String(busn);
    }
}


