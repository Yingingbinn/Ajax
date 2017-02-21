package com.bin.dao;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.bin.pojo.User;
import com.bin.utils.DataSourceUtils;

public class userDao {

	
	public User getusernameByUsername(String username) throws SQLException {
		QueryRunner qr= new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select *from users where username=? limit 1";
		return qr.query(sql, new BeanHandler<>(User.class), username);
	}

}
