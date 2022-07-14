/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class GunplaDAO {

    //get gundam by name
    public static ArrayList<Gunpla> getGunplas(String name) throws SQLException {
        ArrayList<Gunpla> list = new ArrayList<>();
        //Connecting to a database
        Connection con = DBUtils.getConnection();
        //Creating and executing sql statements            
        //String sql = "select p.*, c.name as category from plant p join category c on p.categoryId=c.id where p.name like ?";
        String sql = "select p.*, c.name as category "
                + "from gundam p join category c on p.categoryId=c.id where p.name like ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, "%" + name + "%");
        ResultSet rs = stm.executeQuery();
        //Loading data into the list      
        while (rs.next()) {
            Gunpla gunpla = new Gunpla();
            gunpla.setId(rs.getInt("id"));
            gunpla.setName(rs.getString("name1"));
            gunpla.setPrice(rs.getInt("price"));
            gunpla.setImgPath(rs.getString("imgPath"));
            gunpla.setDescription(rs.getString("description"));
            gunpla.setStatus(rs.getString("status"));
            gunpla.setCategoryId(rs.getInt("categoryId"));
            list.add(gunpla);
        }
        //Closing the connection
        con.close();
        return list;
    }

    //get a plant by id
    public static Gunpla getGunpla(int id) throws SQLException {
        Gunpla gunpla = null;
        //Connecting to a database
        Connection con = DBUtils.getConnection();
        //Executing the stm
        //Creating and executing sql statements            
        String sql = "select p.*, c.name as category "
                + "from gundam p join category c on p.categoryId=c.id "
                + "where p.id = ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setInt(1, id);
        ResultSet rs = stm.executeQuery();
        //Loading data into the list                  
        if (rs.next()) {
            gunpla = new Gunpla();
            gunpla.setId(rs.getInt("id"));
            gunpla.setName(rs.getString("name1"));
            gunpla.setPrice(rs.getInt("price"));
            gunpla.setImgPath(rs.getString("imgPath"));
            gunpla.setDescription(rs.getString("description"));
            gunpla.setStatus(rs.getString("status"));
            gunpla.setCategoryId(rs.getInt("categoryId"));
        }
        //Closing the connection
        con.close();
        return gunpla;
    }

    public List<Gunpla> getList() {
        List<Gunpla> list = null;
        Connection con = DBUtils.getConnection();
        try {
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from gundam");
            list = new ArrayList<>();
            while (rs.next()) {
                Gunpla gunpla = new Gunpla();
                gunpla.setId(rs.getInt("id"));
                gunpla.setName(rs.getString("name1"));
                gunpla.setPrice(rs.getInt("price"));
                gunpla.setImgPath(rs.getString("imgPath"));
                gunpla.setDescription(rs.getString("description"));
                gunpla.setStatus(rs.getString("status"));
                gunpla.setCategoryId(rs.getInt("categoryId"));
                list.add(gunpla);
            }
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
