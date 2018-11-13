package com.zhangyue.bbs;

import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
	
		private String username;
		private String password; 
		private String email;
		
		
		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public void initFromRs(ResultSet result) {
			try {
				setUsername(result.getString("username"));
				setPassword(result.getString("passsword"));
				setEmail(result.getString("email"));
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	

	
	
	
}
