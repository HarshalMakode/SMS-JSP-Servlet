package com.sms.dao;

import com.sms.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    public boolean validateUser(
            String username,
            String password
    ) {

        boolean status = false;

        try {

            Connection connection =
                    DBConnection.getConnection();

            String sql =
                    "SELECT * FROM users WHERE username=? AND password=?";

            PreparedStatement ps =
                    connection.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            status = rs.next();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return status;
    }
}