/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Model.DBConnect;
import Model.DailyRevenue;
import Model.ProductTransactionSummary;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Harque
 */
@WebServlet(name = "DailySalesServlet", urlPatterns = {"/dailysales"})
public class DailySalesServlet extends HttpServlet {
    private DBConnect db;

    @Override
    public void init() throws ServletException {
        db = new DBConnect();  // Khởi tạo DBConnect
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBConnect dbService = new DBConnect();
        List<ProductTransactionSummary> summaries = dbService.getProductTransactionSummary();

        request.setAttribute("summaries", summaries);
        request.getRequestDispatcher("dailysales.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Nếu cần, gọi đến doGet để xử lý POST tương tự như GET
        doGet(request, response);
    }

   
}
