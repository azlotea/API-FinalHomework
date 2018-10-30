package StepDefs;

import java.lang.reflect.Array;

public class Users {
    private String ownerUser = "adrianTest";
    private String ownerPass = "parola1234";
    private String vetUser = "adrianTestVet";
    private String vetPass = "parola1234";

    public String[] getCredentials(String userRole) {
        if(userRole.equals("OWNER_ADMIN")){
            return new String[] {ownerUser,ownerPass};
        }
        if(userRole.equals("VET_ADMIN")){
            return new String[] {vetUser,vetPass};
        }
        return null;
    }
}
