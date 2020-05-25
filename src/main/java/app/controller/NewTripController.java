package app.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import app.IAuthenticationFacade;
import app.domain.Trip;
import app.domain.User;
import app.domain.UserGroup;
import app.repository.GroupRepository;
import app.repository.TripRepository;
import app.repository.UserRepository;
import app.validator.TripValidator;
/**
 * Class for creating a new trip,
 displays a new trip on the users dashboard based on their username and the group theyre in; with further options to delete.
 Additionally, it is linked to their id meaning their dashboard is found by their id when logging in.
 * 
 * @author huda
 *
 */
@Controller
@RequestMapping("/")
public class NewTripController {
	
	@Autowired
	private UserRepository userRepo;
	@Autowired
	private TripRepository tripRepo;
	@Autowired
    private IAuthenticationFacade authenticationFacade;
	@Autowired
	private GroupRepository groupRepo;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.addValidators(new TripValidator());
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String create(Model model) {
		model.addAttribute("trip", new Trip());
		return "create-trip";
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
	//@ResponseBody
	public String addNewTrip(@Valid @ModelAttribute("trip") Trip t, BindingResult result, Model model) {
//		model.addAttribute("error", true);
		
		Authentication authentication = authenticationFacade.getAuthentication();
		
		if (result.hasErrors()) {
			return "create-trip";
		} else {
			User user = userRepo.findByUsername(authentication.getName());
			user.getGroup().addTrip(t);
			userRepo.save(user);
			
//			t.setDestination(t.getDestination());
//			tripRepo.save(t);
			
			return "redirect:/list";
		}
	}
	
	@RequestMapping(value = "delete", params = "id", method = RequestMethod.GET)
	public String deleteTrip(@RequestParam("id") int id, Principal principal) {
		
		Authentication authentication = authenticationFacade.getAuthentication();
		
		Trip t = tripRepo.findById(id);		
		if (t != null) {
			// deleting the trip will fail a foreign key constraint
			User user = userRepo.findByUsername(authentication.getName());
			
			user.getGroup().getTrips().remove(t);					
			// delete trip as orphan
			userRepo.save(user);
		}
		return "redirect:/list";
	}

}
