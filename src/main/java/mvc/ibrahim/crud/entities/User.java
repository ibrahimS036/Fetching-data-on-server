package mvc.ibrahim.crud.entities;

import org.springframework.stereotype.Component;

@Component
public class User {

	private int UserId;
	private String UserName;
	private String UserCity;
	private String UserDesignation;

	public User(int userId, String userName, String userCity, String userDesignation) {
		super();
		UserId = userId;
		UserName = userName;
		UserCity = userCity;
		UserDesignation = userDesignation;
	}

	public User() {
		super();
	}

	// Setters and getters
	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getUserCity() {
		return UserCity;
	}

	public void setUserCity(String userCity) {
		UserCity = userCity;
	}

	public String getUserDesignation() {
		return UserDesignation;
	}

	public void setUserDesignation(String userDesignation) {
		UserDesignation = userDesignation;
	}

	@Override
	public String toString() {
		return "User [UserId=" + UserId + ", UserName=" + UserName + ", UserCity=" + UserCity + ", UserDesignation="
				+ UserDesignation + "]";
	}

}
