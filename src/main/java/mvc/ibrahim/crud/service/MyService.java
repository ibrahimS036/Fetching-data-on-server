package mvc.ibrahim.crud.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import mvc.ibrahim.crud.connection.MyConnection;
import mvc.ibrahim.crud.entities.User;

@Service
public class MyService {

	// Insert Logic
	public void InserData(User user) throws SQLException {
		Connection connection = MyConnection.getConnection();
		String query = "insert into userdetails (UserId,UserName,UserCity,userDesignation) values(?,?,?,?)";
		PreparedStatement statement = connection.prepareStatement(query);
		statement.setInt(1, user.getUserId());
		statement.setString(2, user.getUserName());
		statement.setString(3, user.getUserCity());
		statement.setString(4, user.getUserDesignation());
		int executeInsert = statement.executeUpdate();
		if (executeInsert > 0) {
			System.out.println("Insertion Success.");
		} else {
			System.out.println("insertion failed.");
		}
	}

	// Fetch Logic
	public List<User> fetchAllData() throws SQLException {
		Connection connection = MyConnection.getConnection();
		String query = "select * from userdetails";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet resultSet = statement.executeQuery();
		List<User> userlist = new ArrayList<>();
		// Iterate through the result set and add each user to the list
		while (resultSet.next()) {
			User user = new User();
			user.setUserId(resultSet.getInt("UserId"));
			user.setUserName(resultSet.getString("UserName"));
			user.setUserCity(resultSet.getString("UserCity"));
			user.setUserDesignation(resultSet.getString("UserDesignation"));
			userlist.add(user);
		}
		return userlist; // Return the list of users
	}

	// Update logic
	public void updateUser(User user) throws SQLException {
		Connection connection = MyConnection.getConnection();
		String query = "update userdetails set UserName=?,UserCity=?,UserDesignation=? where UserId=?";
		PreparedStatement statement = connection.prepareStatement(query);
		statement.setString(1, user.getUserName());
		statement.setString(2, user.getUserCity());
		statement.setString(3, user.getUserDesignation());
		statement.setInt(4, user.getUserId());
		int executeUpdate = statement.executeUpdate();
		if (executeUpdate > 0) {
			System.out.println("Update Success.");
		} else {
			System.out.println("Update Failed.");
		}

	}

	//Delete logic
	public void deleteUser(int userId) throws SQLException {
		Connection connection = MyConnection.getConnection();
		String query = "delete from userdetails where UserId=?";
		PreparedStatement statement = connection.prepareStatement(query);
		 statement.setInt(1, userId);
		int executeDelete = statement.executeUpdate();
		if (executeDelete > 0) {
			System.out.println("User Delete Successfully.");
		} else {
			System.out.println("User not found!");
		}

	}

}
