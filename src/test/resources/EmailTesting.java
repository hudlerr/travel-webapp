import static org.junit.Assert.assertEquals;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

public class EmailTesting {

	 @Resource
		private JavaMailSender mailSender;
	 
	 @Test
		public void testemailsender() {
			SimpleMailMessage email=new SimpleMailMessage();
			email.setFrom("testspringbootapp123@gmail.com");
			assertEquals("testspringbootapp123@gmail.com",email.getFrom());	
		}
	 @Test
	 public void testemailsubject() {
		 SimpleMailMessage email=new SimpleMailMessage();
		 email.setSubject("hi");
		 assertEquals("hi",email.getSubject());
	 }
	 
	 @Test
	 public void testemailmessage() {
		 SimpleMailMessage email=new SimpleMailMessage();
		 email.setText("welcome");
		 assertEquals("welcome",email.getText());
	 }
}
