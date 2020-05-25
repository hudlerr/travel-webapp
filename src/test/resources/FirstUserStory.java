import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

import app.domain.User;

public class FirstUserStory {
	
	
	@Test
	public void testUserName() {
		User r = new User();
		r.setUsername("paida");
		assertEquals("paida", r.getUsername());
	}
	
	
	
	@Test
	public void testFirstName() {
		User r = new User();
		r.setFirstname("paida");
		assertEquals("paida", r.getFirstname());
		
	
	}
	
	@Test 
	public void testLastName() {
		User r = new User();
		r.setLastname("Makoni");
		assertEquals("Makoni", r.getLastname());
	}
	

	
	
	@Test 
	public void testEmailInput() {
		User r = new User();
		r.setEmail("pmakoni9@gmail.com");
	assertEquals("pmakoni9@gmail.com", r.getEmail());
	}
	
	@Test
	public void testPassword() {
		User r = new User();
		r.setPassword("leicester");
		assertEquals("leicester", r.getPassword());
	}
	
	@Test
	public void testPasswordConfirm() {
		User r = new User();
		r.setPasswordConfirm("leicester");
		assertEquals("leicester", r.getPasswordConfirm());
	
	}
	
}
	
