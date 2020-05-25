import static org.junit.Assert.*;

import org.junit.Test;

import app.domain.Trip;

public class CreateNewCategories {
	
	
	/*
	 * As a user, I want to be able to create new categories and name them, so that I can plan for different aspects of the trip.
	 * As a user, i want to have the different options in each category clearly ranked, so that each member can clearly see and vote if they agree.
	 * As a user, I want to be able to log back in the app and have all my saved ideas there, so that I can continue planning where i left off.
	 */
	
	
	@Test
		public void testCategory1() {
		 Trip name1 = new Trip();
		 name1.setName1("Ryanair");
		 assertEquals("Ryanair" ,name1.getName1());
		 
	 }
	
	@Test
		public void testCategory2() {
		 Trip name2 = new Trip();
		 name2.setName2("Hotels");
		 assertEquals("Hotels" ,name2.getName2());
		 

}
	
	@Test
		public void testCategory3() {
		Trip name3 = new Trip(); 
		name3.setName3("Activities");
		assertEquals("Activities", name3.getName3());
		
	}
	
	@Test
		public void testCategory4() {
		Trip name4 = new Trip();
		name4.setName4("Food");
		assertEquals("Food", name4.getName4());
		
	}
		
}