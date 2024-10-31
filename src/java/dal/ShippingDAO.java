package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Shipping;

/**
 *
 * @author Admin
 */
public class ShippingDAO extends DBContext {

    public int createReturnId(Shipping shipping) {
        try {
            String sql = "INSERT INTO [dbo].[Shipping]\n"
                    + "           ([name]\n"
                    + "           ,[phone]\n"
                    + "           ,[address]\n"
                    + "           ,[Status])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,'Pending')";

            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, shipping.getName());
            stm.setString(2, shipping.getPhone());
            stm.setString(3, shipping.getAddress());
           
            stm.executeUpdate();

            ResultSet rs = stm.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception ex) {
            Logger.getLogger(ShippingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Shipping> getAllShipping() {
        List<Shipping> shippingList = new ArrayList<>();
        String sql = "select * from Shipping ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Shipping shipping = new Shipping();
                shipping.setId(rs.getInt("id"));
                shipping.setName(rs.getString("name"));
                shipping.setPhone(rs.getString("phone"));
                shipping.setAddress(rs.getString("address"));
                shipping.setStatus(rs.getString("status"));
                shippingList.add(shipping);
            }
        } catch (SQLException e) {
        }
        return shippingList;
    }
    public void updateStatus(int id , String status){
        String sql = "UPDATE Shipping SET status = ? WHERE id = ?";
        try {
            
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    public Shipping getShippingByOrderId(int orderId) {
    Shipping shipping = null;
    String sql = "SELECT s.* FROM Shipping s " +
                 "INNER JOIN Orders o ON o.shipping_id = s.id " +
                 "WHERE o.id = ?";
    try {
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, orderId);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            shipping = new Shipping();
            shipping.setId(rs.getInt("id"));
            shipping.setName(rs.getString("name"));
            shipping.setPhone(rs.getString("phone"));
            shipping.setAddress(rs.getString("address"));
            shipping.setStatus(rs.getString("status"));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return shipping;
}
}
