/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Harque
 */
public class DBConnect {

    private Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chuoicafe", "root", "AkakuroxD-kun123");
        return con;
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account login(String user, String pass) {
        String query = "select * from account where user = ? and pass = ?";
        try {
            conn = this.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String query = "select * from account where user = ?";
        try {
            conn = this.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void singup(String user, String pass) {
        String query = "INSERT INTO account (user, pass, isAdmin) VALUES (?, ?, 1)";
        try {
            conn = this.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getLast() {
        String query = "SELECT *FROM product ORDER BY id DESC LIMIT 1";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product WHERE cateID = ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product WHERE sell_ID = ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product WHERE name LIKE ?";

        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> searchByNameM(String txtSearch, int id) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product WHERE name LIKE ? AND sell_ID = ?";

        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ps.setInt(2, id);
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductByID(String id) {
        String query = "SELECT * FROM product WHERE id = ?";

        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insertProduct(String name, String image, String price, String quantity,
            String title, String description, String category, int sid) {
        String query = "INSERT INTO product (name, image, price, quantity, title, description, cateID, sell_ID) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, quantity);
            ps.setString(5, title);
            ps.setString(6, description);
            ps.setString(7, category);
            ps.setInt(8, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String image, String price, String quantity,
            String title, String description, String category, String pid) {
        String query = "UPDATE product SET name = ?, image = ?, price = ?, quantity = ?, title = ?, description = ?, cateID = ? WHERE id = ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, quantity);
            ps.setString(5, title);
            ps.setString(6, description);
            ps.setString(7, category);
            ps.setString(8, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteProduct(String pid) {
        String query = "delete from product\n"
                + "where id = ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addTransaction(String cusname, int pid, int quanti) {
        String query = "INSERT INTO transaction (cusname, pID, quanti) VALUES (?, ?, ?)";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cusname);
            ps.setInt(2, pid); // Đặt giá trị pid kiểu int vào câu truy vấn
            ps.setInt(3, quanti);

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
    }

    public List<Transaction> getAllTransaction() {
        List<Transaction> list = new ArrayList<>();
        String query = "select * from transaction";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Transaction(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Object[]> getMonthlySales(int month, int year) {
        List<Object[]> monthlySales = new ArrayList<>();
        String query = "SELECT product.name, SUM(transaction.quanti) AS totalSales "
                + "FROM transaction "
                + "INNER JOIN product ON transaction.pID = product.id "
                + "WHERE MONTH(transaction.Date) = ? AND YEAR(transaction.Date) = ? "
                + "GROUP BY product.id, product.name";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, month);
            ps.setInt(2, year);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String productName = rs.getString("name");
                int totalSales = rs.getInt("totalSales");
                Object[] sale = {productName, totalSales};
                monthlySales.add(sale);
            }
        } catch (Exception e) {
        }
        return monthlySales;
    }
    public List<ProductTransactionSummary> getProductTransactionSummary() {
        List<ProductTransactionSummary> summaries = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, t.quanti, t.date "
                     + "FROM Product p "
                     + "INNER JOIN Transaction t ON p.id = t.pID";

        
        try {
            try {
                conn = new DBConnect().getConnection();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
            }
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
             
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quanti");
                String date = rs.getString("date");

                summaries.add(new ProductTransactionSummary(id, name, price, quantity, date));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return summaries;
    }
  
}
