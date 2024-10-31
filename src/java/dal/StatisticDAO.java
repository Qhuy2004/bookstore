/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import model.Satistic;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author phuoc
 */
public class StatisticDAO extends DBContext{
    public Satistic getAll(){
        Satistic s = new Satistic();
        String sql = "SELECT COUNT(DISTINCT id) AS totalOrders, SUM(totalPrice) AS totalSales FROM Orders WHERE create_date = CONVERT(date, GETDATE())";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                s.setTotalOrders(rs.getInt("totalOrders"));
                s.setTotalSales(rs.getInt("totalSales"));
            }
        } catch (SQLException e) {
        }
        return s;
    }
}
