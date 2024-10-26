/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Harque
 */
public class ProductTransactionSummary {
    private int id;
    private String name;
    private double price;
    private int quantity;
    private String date;

    public ProductTransactionSummary(int id, String name, double price, int quantity, String date) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.date = date;
    }

    // Các phương thức getter
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getDate() {
        return date;
    }

    @Override
    public String toString() {
        return "ID: " + id + ", Tên: " + name + ", Giá: " + price
             + ", Số lượng: " + quantity + ", Ngày: " + date;
    }
}