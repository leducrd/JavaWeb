/**
 * 
 */
package edu.cvtc.web;

/**
 * @author ryanleduc
 *
 */
public class User {
	//requirements for a JavaBean
	//	1. Has getters and setters for each of it's properties
	//	2. Override toString
	
	private String firstName;
	private String lastName;
	private String email;
	
	
	
	public User(String firstName, String lastName, String email) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + "]";
	}
	
	
	
}
