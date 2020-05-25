import static org.junit.Assert.*;

//import javax.print.attribute.standard.Destination;

import org.junit.Test;
// org.springframework.mail.SimpleMailMessage;

import app.domain.Trip;
import app.domain.User;


public class CreateANewTrip {
	
	/* User Stories
	 
	 * As a user, I want to be able create a new trip and be able to name it, so that I can have a clearly defined space where I start planning my trip.
	 * As a user, I want to be able to log back in the app and have all my saved ideas there, so that I can continue planning where i left off.

	*/
	
	@Test
	 public void testDestination() {
		 Trip destination = new Trip();
		 destination.setDestination("Austria");
		 assertEquals("Austria" ,destination.getDestination());
		 
	 }
	
	@Test
		public void testCheckIndate() {
		Trip checkIn = new Trip();
		checkIn.setCheckin("10/05/2020");
		assertEquals("10/05/2020", checkIn.getCheckin());
	}
	
	@Test
		public void testCheckOutdate() {
		Trip checkOut = new Trip();
		checkOut.setCheckout("20/05/2020");
		assertEquals("20/05/2020", checkOut.getCheckout());
	}

	@Test
		public void testLimit () {
		Trip budget = new Trip();
		budget.setBudget(1000);
		assertEquals(1000, budget.getBudget());
	}
	
	
}