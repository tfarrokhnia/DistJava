package testpackage;

public enum FindColumns {
    ACCTNUM, LNAME, FNAME, EMAIL, IPADDR;

    public static FindColumns getValue(String columnValue){
        switch (columnValue){
            case "acctnum": return ACCTNUM;
            case "lname": return LNAME;
            case "fname": return FNAME;
            case "email": return EMAIL;
            case "ipaddr": return IPADDR;
        }

        return LNAME;
    }
}
