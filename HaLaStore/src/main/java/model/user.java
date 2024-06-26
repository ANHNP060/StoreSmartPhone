package model;

public class user {
	private int UserId;
	private String fullname , email, phoneNumber;
	private String address, password;
	private int roleUser;
	private String salt;
	public user() {
		
	}
	
	public user(int UserId, String fullname, String email, 
			String phoneNumber, String address,
			String password, int roleUser, String salt) {
		this.UserId = UserId;
		this.fullname = fullname;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.password = password;
		this.roleUser = roleUser;
		this.salt = salt;
	}
	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRoleUser() {
		return roleUser;
	}

	public void setRoleUser(int roleUser) {
		this.roleUser = roleUser;
	}
	
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	
	@Override
	public String toString() {
		return "user [UserId=" + UserId + ", fullname=" + fullname + ", email=" + email + ", phoneNumber=" + phoneNumber
				+ ", address=" + address + ", password=" + password + ", roleUser=" + roleUser + ", salt=" + salt + "]";
	}
	
}
