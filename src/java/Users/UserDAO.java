/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Users;

import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


/**
 *
 * @author crrtt
 */
public class UserDAO {
    
    public static UserDTO check(String userId, String password) throws SQLException, ClassNotFoundException{
        UserDTO user = null;
        //Connecting to a database
        Connection con = DBUtils.getConnection();
        //Creating and executing sql statements            
        String sql = "select * from Users where userId=? and password=?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, userId);
        stm.setString(2, password);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        if (rs.next()) {
            user = new UserDTO();
            user.setUserId(rs.getString("userId"));
            user.setPassword(rs.getString("password"));
            user.setFullName(rs.getString("fullName"));
            user.setRoleId(rs.getString("roleId"));
        }
        //Closing the connection
        con.close();
        return user;
    }
    
}
