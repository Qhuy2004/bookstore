/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

//import java.util.List;
//import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
//import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
//import java.util.logging.Level;
//mport java.util.logging.Logger;
import model.Customer;

/**
 *
 * @author phuoc
 */
public class CustomerDAO extends DBContext {

    public List<Customer> getAllCustomer() {
        List<Customer> list = new ArrayList<>();
        String sql = "select * from Customer";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int customerID = rs.getInt(1);
                int AccountID = rs.getInt(2);
                int productID = rs.getInt(3);
                String name = rs.getString(4);
                String phone = rs.getString(5);
                String address = rs.getString(6);
                String email = rs.getString(7);
                Date dateBuy = rs.getDate(8);
                Customer c = new Customer(customerID, AccountID, productID, name, phone, address, email, dateBuy);
                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public void insertCustomer(int accountId, int productId, String name, String phone, String address, String email) {
        String sql = "INSERT INTO [dbo].[Customer] (AccountID, ProductID, Name, Phone, Address, Email, DateBuy)\n"
                + "VALUES (? ,? , ?,?,?,?, GETDATE())";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);   // Gán accountId vào câu lệnh SQL
            ps.setInt(2, productId);
            ps.setString(3, name);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setString(6, email);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
}
