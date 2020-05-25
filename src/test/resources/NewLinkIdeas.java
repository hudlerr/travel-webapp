import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.List;

import org.junit.Test;

import app.domain.Trip;

public class NewLinkIdeas {
	
	/*
	 * As a user, I want to be able to save links to different categories, so that i can have a list options for each category.
	 * As a user, i want to have the different options in each category clearly ranked, so that each member can clearly see and vote if they agree.
	 */

	@Test
	 public void testLinks() {
		 Trip ryanair = new Trip();
		 
		 //adding ryanair as an option and as part of a list.
		 List<Trip> example = Arrays.asList(ryanair);
		 List<Trip> example1 = Arrays.asList(ryanair);
		 
		 assertThat(example, is(example1));
		 
		 
		 
		 
		 //link1.setItems2("<> ");
		// assertEquals("Austria" ,link1.getItems2());
		 
	 }
	
//	@Test
//		public void testLinkInput () {
//			Trip links = new Trip();
//			
//			 List<Trip> link = Arrays.asList (
//			 new Trip ("holidayInn.com")
//			 );
//		
	}


