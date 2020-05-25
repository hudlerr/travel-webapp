package app.domain;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.Valid;
/**
 * Class for new Group
 * 
 * @author huda
 *
 */
@Entity
public class UserGroup {
	
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	private int id;
	
	@Column(nullable=false)
	private String groupName;

	@OneToMany(mappedBy="userGroup", cascade=CascadeType.ALL)
	private Set<User> users;
	
	
	
	// HIBERNATE CONSTRAINT:
	// when a constructor different from default is present
	// the default constructor needs to be declared
	
	/**
	 * GROUP created as an OWNER of TRIP (by Organizer class)
	 */
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true)
	private List<Trip> trip = new ArrayList<Trip>();

	/**
	 * Creates a new Group for specified members
	 * 
	 * @param id        			 group id to join it
	 * @param setgroup			 sets up the group itself
	 * @param setuser 			 sets users within a group
	 */
	public List<Trip> getTrips() {
		return trip;
	}

	public void setOrganizers(List<Trip> trip) {
		this.trip = trip;
	}
	
	public UserGroup() { }
	
	public UserGroup(String group) {
		this.groupName = group; 
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGroup() {
		return groupName;
	}

	public void setGroup(String group) {
		this.groupName = group;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public void addTrip(@Valid Trip t) {
		this.trip.add(t);
	}
	
	
}
