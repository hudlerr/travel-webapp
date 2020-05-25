package app.domain;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Class for new role
 * 
 * @author huda
 *
 */

@Entity
@Table(name="roles")
public class Role {
	@Id
	private int id;
	
	@Column(nullable=false)
	private String role;

	@OneToMany(mappedBy="role", cascade=CascadeType.ALL)
	private Set<User> users;
	
	// HIBERNATE CONSTRAINT:
	// when a constructor different from default is present
	// the default constructor needs to be declared
	public Role() { }
	/**
	 * Creates a Role with id and role title
	 * 
	 * @param id        the id of users role
	 * @param role			 users role
	
	 */
	public Role(int id, String role) {
		this.id = id; 
		this.role = role; 
	}
	
	/**
	 * default constructor
	 */
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}
	
	
}
