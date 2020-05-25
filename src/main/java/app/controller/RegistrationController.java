package app.controller;

import java.util.List;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import app.OrganizerApp;
import app.domain.User;
import app.domain.UserGroup;
import app.repository.GroupRepository;
import app.repository.RoleRepository;
import app.repository.UserRepository;
import app.validator.UserValidator;
/**
 * Class for new users, being able to create an account and have it stored in the database;
 user is redirected to login page for authentication and security purposes.
 Additionally, group names and roles are also stored and linked with other users(in the same group).
 * 
 * @author huda
 *
 */
@Controller
//@RequestMapping("/")
public class RegistrationController {

	@Autowired
	UserRepository userRepo;

	@Autowired
	RoleRepository roleRepo;
	
	@Autowired
	GroupRepository groupRepo;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.addValidators(new UserValidator(userRepo));
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String showRegister(Model model) {
		model.addAttribute("user", new User());

		return "index";
	}

	@RequestMapping(value = "/hello", method = RequestMethod.POST)
	public String addNewUser(@RequestParam("groupName") String groupName, @RequestParam("roleName") String roleName, @Valid @ModelAttribute("user") User u,
			BindingResult result, Model model) {
		model.addAttribute("errors", true);
		if (result.hasErrors() || userRepo.findByUsername(u.getUsername()) != null) {
			return "index";
		} else {
			BCryptPasswordEncoder pe = new BCryptPasswordEncoder();
			u.setPassword(pe.encode(u.getPassword()));
			u.setRole(roleRepo.findByRole(roleName));
			
			if(groupRepo.findByGroupName(groupName) != null) {
              u.setGroup(groupRepo.findByGroupName(groupName));	
  			  userRepo.save(u);
              return"redirect:/logout";
            } else {
            	UserGroup g = new UserGroup(groupName);
            	u.setGroup(g);
            	groupRepo.save(g);            	
            }
			userRepo.save(u);
			return "redirect:/logout";
		}

	}
}
