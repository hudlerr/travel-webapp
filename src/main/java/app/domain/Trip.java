package app.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * Class for new trip
 * 
 * @author huda
 *
 */

@Entity(name = "trips")
public class Trip {

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	private int id;

	@Column(nullable=false)
	public String destination;
	public String checkin;
	public String checkout;
	public int budget;
	public String name1;
	@ElementCollection
	public List<String> items1;
	public List<String> getItems1() {
		return items1;
	}

	public void setItems1(List<String> items1) {
		this.items1 = items1;
	}

	public String name2;
	@ElementCollection
	public List<String> items2;
	public List<String> getItems2() {
		return items2;
	}

	public void setItems2(List<String> items2) {
		this.items2 = items2;
	}
	
	public String name3;
	@ElementCollection
	public List<String> items3;
	public List<String> getItems3() {
		return items3;
	}

	public void setItems3(List<String> items3) {
		this.items3 = items3;
	}
	
	public String name4;
	@ElementCollection
	public List<String> items4;
	public List<String> getItems4() {
		return items4;
	}

	public void setItems4(List<String> items4) {
		this.items4 = items4;
	}
	//public String date;

//	@ManyToOne(fetch = FetchType.EAGER)
//	private Category category;
	
	/**
	 * Creates a new Trip with a destination and dates
	 * 
	 * @param destination        the name of the destination
	 * @param checkin			 the date of trip
	 * @param checkout 			 the date of trip
	 */
	public Trip(String destination, String checkin, String checkout, int budget) {
		this.destination = destination;
		this.checkin = checkin;
		this.checkout = checkout;
		this.budget = budget;
	}

	/**
	 * default constructor
	 */
	public Trip() {
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public int getBudget() {
		return budget;
	}

	public void setBudget(int budget) {
		this.budget = budget;
	}
	
	/**
	 * @return: names of categories
	 */

	public String getName1() {
		return name1;
	}

	public void setName1(String name1) {
		this.name1 = name1;
	}

	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

	public String getName3() {
		return name3;
	}

	public void setName3(String name3) {
		this.name3 = name3;
	}

	public String getName4() {
		return name4;
	}

	public void setName4(String name4) {
		this.name4 = name4;
	}	
	

	

}
