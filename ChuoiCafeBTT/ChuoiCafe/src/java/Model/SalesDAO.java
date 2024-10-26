/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Harque
 */
import java.sql.*;
import java.util.*;

public class SalesDAO {
    private Connection conn;

    public SalesDAO(Connection conn) {
        this.conn = conn;
    }

    // Truy vấn doanh thu hàng ngày
    public Map<String, Double> getDailyRevenue(int month, int year) {
        Map<String, Double> dailyRevenue = new HashMap<>();
        String query = "SELECT date, SUM(price * quantity) AS revenue "
                     + "FROM transactions "
                     + "WHERE MONTH(date) = ? AND YEAR(date) = ? "
                     + "GROUP BY date";

        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, month);
            stmt.setInt(2, year);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String date = rs.getString("date");
                double revenue = rs.getDouble("revenue");
                dailyRevenue.put(date, revenue);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dailyRevenue;
    }
}

