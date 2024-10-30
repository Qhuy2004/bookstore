
package dal;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;


public class ProductDAO extends DBContext {

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getInt(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (SQLException ex) {
            //Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getProductsByCategoryId(int categoryId) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product where Product.cateID = ?";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, categoryId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getInt(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getProductsWithPagging(int page, int PAGE_SIZE) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select *  from Product order by id\n"
                    + "offset (?-1)*? row fetch next ? rows only";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, page);
            stm.setInt(2, PAGE_SIZE);
            stm.setInt(3, PAGE_SIZE);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getInt(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int getTotalProducts() {
        try {
            String sql = "select count(id)  from Product ";

            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Product> search(String keyword) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select *  from Product where name like ?";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + keyword + "%");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getInt(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);

            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Product getProductById(int productId) {
        try {
            String sql = "select *  from Product where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, productId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getInt(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                return product;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getProductsBySellId(int Id) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product";

            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getInt(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void inSertProduct(String name, String img, String price, String title, String description, String cid, int sell_ID) {
        try {
            String sql = "INSERT INTO [Product]\n"
                    + "           ([name]\n"
                    + "           ,[image]\n"
                    + "           ,[price]\n"
                    + "           ,[title]\n"
                    + "           ,[description]\n"
                    + "           ,[cateID]\n"
                    + "           ,[sell_ID])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2,  img);
            stm.setString(3, price);
            stm.setString(4, title);
            stm.setString(5, description);
            stm.setString(6, cid);
            stm.setInt(7, sell_ID);
            stm.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void deleteProduct(int id) {
        try {
            String sql = "DELETE FROM [Product]\n"
                    + "WHERE id = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateProduct(String name, String img, String price, String title, String description, String cid, String id) {
        try {
            String sql = "UPDATE [Product]\n"
                    + "   SET [name] = ?\n"
                    + "      ,[image] = ?\n"
                    + "      ,[price] = ?\n"
                    + "      ,[title] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[cateID] = ?\n"
                    + " WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2,  img);
            stm.setString(3, price);
            stm.setString(4, title);
            stm.setString(5, description);
            stm.setString(6, cid);
            stm.setString(7, id);
            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Product> getAllProductsLast() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP 4 * FROM Product ORDER BY ID asc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getInt(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
     public List<Product> getAllNewProducts() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP 4 * FROM Product ORDER BY ID desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getInt(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
     public List<Product> getNewProductsByCateID(int c) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP 2 * FROM Product where cateID = ? ORDER BY ID desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, c);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getInt(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        ProductDAO a = new ProductDAO();
        List<Product> list = a.getAllProducts();
        for (Product product : list) {
            System.out.println(product.getName());
        }
    }
}



