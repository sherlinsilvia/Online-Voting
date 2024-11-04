import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class onlinevoting {
    private final static String dbUrl = "jdbc:mysql://localhost:3306/userdb";
    private final static String dbUser = "root";
    private final static String dbPassword = "Sherlin14";
    private final static String dbDriver = "com.mysql.cj.jdbc.Driver"; // Correct driver class

    // Load the database driver
    private static void loadDriver() {
        try {
            Class.forName(dbDriver);
            System.out.println("Database driver loaded successfully.");
        } catch (ClassNotFoundException e) {
            System.err.println("Database Driver not found: " + e.getMessage());
        }
    }

    // Get a connection to the database
    private static Connection getConnection() throws SQLException {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
            System.out.println("Database connection established.");
        } catch (SQLException e) {
            System.err.println("Failed to connect to the database: " + e.getMessage());
            e.printStackTrace();
        }
        return con;
    }

    // Insert a member into the database, returning true if successful
    public static boolean insert(member Member) {
        loadDriver();
        String sql = "INSERT INTO Member (fname, birthday, pin) VALUES (?, ?, ?)";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            // Validate member data
            if (Member == null || Member.getFname() == null || Member.getBirthday() == null || Member.getPin() == null) {
                System.err.println("Incomplete member information.");
                return false; // Incomplete member information
            }

            ps.setString(1, Member.getFname());
            ps.setString(2, Member.getBirthday());
            ps.setString(3, Member.getPin());
            ps.executeUpdate();
            System.out.println("Member inserted successfully.");
            return true; // Successful insertion
        } catch (SQLException e) {
            System.err.println("Data not entered: " + e.getMessage());
            e.printStackTrace();
            return false; // Insertion failed
        }
    }
}
