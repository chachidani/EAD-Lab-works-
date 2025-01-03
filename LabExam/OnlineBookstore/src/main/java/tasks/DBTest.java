package tasks;


public class DBTest {
    public static void main(String[] args) {
        DBConnectionManager dbManager = new DBConnectionManager();
        try {
            dbManager.openConnection(); // Open connection
            // Perform any test operation here, e.g., print connection metadata
            System.out.println("Connected to: " + dbManager.getConnection().getMetaData().getURL());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                dbManager.closeConnection(); // Close connection
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

