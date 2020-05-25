package app.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import app.domain.User;
//import app.domain.User;
import app.repository.UserRepository;
/**
 * Class for simply logging in,
 if unsuccessful theres an error otherwise user can use the website and logout succesfully
 * 
 * @author huda
 *
 */
@Controller
public class LoginController {
	
	@Autowired
	UserRepository userRepo;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String loginPage() {
        return "login-form";
	}
	
	@RequestMapping(value = "/error-login", method = RequestMethod.GET)
	public String invalidLogin(Model model) {
		model.addAttribute("error", true);
		return "login-form";
	}
	
	@RequestMapping(value = "/success-login", method = RequestMethod.POST)
	public String successLogin(Principal principal) {
		User user = userRepo.findByUsername(principal.getName());
		
		String view;
		switch (user.getRole().getRole()) {
		case "TRIP LEADER":
			view = "redirect:/create-trip";
			break;
		default:
			view = "redirect:/dashboard";
			break;
		}
		return view;
		//return "user-dashboard";
	}
	
	@RequestMapping(value = "/user-logout", method = RequestMethod.GET)
	public String logout(Model model) {
		model.addAttribute("logout", true);
		return "login-form";
	}
}
