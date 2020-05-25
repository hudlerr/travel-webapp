package app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.domain.User;
import app.repository.UserRepository;
/**
 * Class for redirecting you to different pages,
 redirects you to create a trip,send an email, groupchat and moodboard
 * 
 * @author huda
 *
 */

@Controller
public class HelloController {
	
	@Autowired
	UserRepository userRepo;
	
	@RequestMapping(value = "hello", method = RequestMethod.GET)
	public String create(Model model, String firstname) {
		//model.addAttribute("user", new User());
		return "hello";
	}
	
//	@RequestMapping(value = "/hello", params = "invite", method = RequestMethod.POST)
//	public String addFriends() {
//		return "invite-friends";
//	}
	
	@RequestMapping(value = "/generatePlan", params = "create", method = RequestMethod.POST)
	public String createNewTrip() {
		return "create-trip";
	}
	
	@RequestMapping(value = "/invitef", params = "invite", method = RequestMethod.POST)
	public String invitefriends() {
		return "invite-friends";
	}
	
	@RequestMapping(value = "/groupchat", params = "chat", method = RequestMethod.POST)
	public String groupchat() {
		return "chat";
	}
	@RequestMapping(value = "/moodboard", params = "mood", method = RequestMethod.POST)
	public String mood() {
		return "moodboard";
	}
	
	@RequestMapping(value = "/return3", params = "back3", method = RequestMethod.POST)
	public String backbutton() {
		return "hello";
	}
	

}
