import static org.junit.Assert.*;

import org.junit.Test;

import app.domain.User;

public class LoginPage {

	@Test
	public void testUserName() {
		User r = new User();
		r.setUsername("huda");
		assertEquals("huda", r.getUsername());
	}
	
	@Test
	public void testPassword() {
		User r = new User();
		r.setPassword("leicester");
		assertEquals("leicester", r.getPassword());
	}
	
	
	
}
