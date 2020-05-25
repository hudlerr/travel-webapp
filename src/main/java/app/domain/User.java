package app.domain;

import java.util.ArrayList;
import javax.validation.constraints.Email;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
/**
 * Class for new User
 * 
 * @author huda
 *
 */
@Entity(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	private int id;

	@Column
	private String username;

	@Column(unique = true, nullable = false)
	public String firstname;

	@Column(unique = true, nullable = false)
	private String lastname;

	@Column(unique = true, nullable = false)
	@Email
	private String email;

	@Column(unique = true, nullable = false)
	private String password;
	
//	@Column(unique = true, nullable = false)
//	private String group;

	@Transient
	private String passwordConfirm;

	@ManyToOne(fetch = FetchType.EAGER)
	private Role role;

	@ManyToOne(fetch = FetchType.EAGER)
	private UserGroup userGroup;
	
	

//	/**
//	 * USER created as an OWNER of TRIP (by Organizer class)
//	 */
//	@OneToMany(mappedBy = "owner", cascade = CascadeType.ALL)
//	private List<Organizer> organizers = new ArrayList<Organizer>();
//
//	public List<Organizer> getOrganizers() {
//		return organizers;
//	}
//
//	public void setOrganizers(List<Organizer> organizers) {
//		this.organizers = organizers;
//	}
	/**
	 * Creates a new User with a password and username to log back in
	 * 
	 * @param password        		 first password
	 * @param username			 username
	 * @param firstname 			 users firstname
	  * @param lastname			 users lastname
	 * @param passwordconfirm 		 confirmed password	 
	  * @param email			 users email
	 * @param id 				 users id
	  * @param group			 name of group
	 * @param role 				 either trip leader or group member
	 */
	
	/**
	 * default constructor with return methods
	 */
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

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public UserGroup getGroup() {
		return userGroup;
	}

	public void setGroup(UserGroup group) {
		this.userGroup = group;
	}

	@Transient
	public String getPasswordConfirm() {
		return passwordConfirm;
	}

	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}

}
