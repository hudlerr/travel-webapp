import static org.junit.Assert.assertEquals;

//import app.domain.GroupChat;

import org.junit.Test;

import app.domain.GroupChat;
import app.domain.Trip;

public class Travelsmart {

	
	/*
	 * As a user, I want to be able to communicate with other group participants, so we can plan trips effectively. (group chat)
	 */
	
	@Test
		public void testGroupChat() {
		GroupChat content = new GroupChat();
		content.setContent("hello");
		assertEquals("hello", content.getContent());
	}
	
	@Test
	public void testSender() {
		GroupChat sender = new GroupChat();
		sender.setSender("admin");
		assertEquals("admin", sender.getSender());
		
	}
	
}
