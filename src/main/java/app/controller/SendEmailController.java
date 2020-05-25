package app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 /**
 * Class for sending email; simple email service with auto generated message to the user;
 all that is required is the recipient, subject, message and group name to succesfully invite another user.
 Link to localhost is also included in the message.
 * 
 * @author huda
 *
 */
@Controller
//@RequestMapping("/invitenext")
public class SendEmailController {
 
    @Autowired
	private JavaMailSender mailSender;
     
    @RequestMapping(value="/invitenext",method = RequestMethod.POST)
    public String doSendEmail(HttpServletRequest request) {
        // takes input from e-mail form
        String recipientAddress = request.getParameter("recipient");
        String subject = request.getParameter("subject");
        //String message = request.getParameter("message");
        String group= request.getParameter("group");
        String message = "Join me on my travels, Click on: https://localhost:8080/register. Enter group name: "+group; 
        
        
        // prints debug info
        System.out.println("To: " + recipientAddress);
        System.out.println("Subject: " + subject);
        System.out.println("Message: " + message);
        System.out.println("Group: " + group);
        
        // creates a simple e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(message);
        email.setReplyTo(group);
         
        // sends the e-mail
        mailSender.send(email);
         
        // forwards to the view named "Result"
        return "hello";
    }
}
