package app.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import app.IAuthenticationFacade;
import app.domain.Trip;
import app.domain.User;
import app.domain.UserGroup;
import app.repository.GroupRepository;
import app.repository.RoleRepository;
import app.repository.TripRepository;
import app.repository.UserRepository;


@Controller
@RequestMapping("/")
public class DisplayTripController {
	/**
	 * Displays a new Trip with a destination and dates, this is fetched and displayed within one jsp
	
	 */

	@Autowired
	UserRepository userRepo;

	@Autowired
	RoleRepository roleRepo;

	@Autowired
	TripRepository tripRepo;

	@Autowired
	GroupRepository groupRepo;

	@Autowired
	private IAuthenticationFacade authenticationFacade;

	@RequestMapping("/")
	public String start() {
		return "redirect:/list";
	}

	@RequestMapping("/list")
	public String listTrips(Model model, Principal principal) {

		Authentication authentication = authenticationFacade.getAuthentication();
		User user = userRepo.findByUsername(authentication.getName());

		List<Trip> trips = new ArrayList<>();
		trips.addAll(user.getGroup().getTrips());
		if (trips.isEmpty()) {
			return "hello";
		} else {
			model.addAttribute("trips", trips);
		}
		return "user-dashboard";
	}

//	private void addTripsForUser(List<Trip> trips, User user) {
//		if ("member".equals(user.getGroup().getGroup())) {
//			for (Organizer o : user.getOrganizers()) {
//				trips.addAll(o.getTrips());
//			}
//		} else if ("admin".equals(user.getGroup().getGroup())) {
//			// add all todos in the system
//			for (Trip t : tripRepo.findAll()) {
//				trips.add(t);
//			}
//		}
//	}
	
	private void addTripsForUser(List<Trip> trips, UserGroup userGroup, User user) {
		trips.addAll(user.getGroup().getTrips());
	}
	


	//groupRepo.findByGroupName(groupName) != null
	
	
	
//	private void addTripsForUser(@RequestParam("groupName") String groupName, List<Trip> trips, User user) {
//		if (groupRepo.findByGroupName(groupName) != null) {
//			for (Organizer o : user.getOrganizers()) {
//				trips.addAll(o.getTrips());
//			}
//		} else if (groupRepo.findByGroupName(groupName) != null) {
//			// add all todos in the system
//			for (Trip t : tripRepo.findAll()) {
//				trips.add(t);
//			}
//		}
//	}

	@RequestMapping("/list/delete")
	public String deleteItem(@Param("name") Integer name, @Param("item") String item, Model model,
			Principal principal) {

		Authentication authentication = authenticationFacade.getAuthentication();
		User user = userRepo.findByUsername(authentication.getName());
		UserGroup userGroup = groupRepo.findByGroupName(authentication.getName());
		
		List<Trip> trips = new ArrayList<>();
		addTripsForUser(trips, userGroup, user);

		if (trips.isEmpty()) {
			return "hello";
		} else {
			Trip t = trips.get(0);
			switch (name) {
			case 1:
				t.items1.remove(item);
				break;

			default:
				break;
			}

			tripRepo.save(t);
			model.addAttribute("trips", trips);
		}
		return "user-dashboard";
	}

	@RequestMapping("/list/add")
	public String addNewItem(@Param("newItem") String newItem, Model model, Principal principal) {

		Authentication authentication = authenticationFacade.getAuthentication();
		User user = userRepo.findByUsername(authentication.getName());
		UserGroup userGroup = groupRepo.findByGroupName(authentication.getName());
		
		List<Trip> trips = new ArrayList<>();
		addTripsForUser(trips, userGroup, user);

		if (trips.isEmpty()) {
			return "hello";
		} else {
			Trip t = trips.get(0);
			t.items1.add(newItem);
			tripRepo.save(t);
			model.addAttribute("trips", trips);
		}
		return "redirect:/list";
	}

	@RequestMapping("/list/addItem2")
	public String addItem2(@Param("newItem2") String newItem2, Model model, Principal principal) {

		Authentication authentication = authenticationFacade.getAuthentication();
		User user = userRepo.findByUsername(authentication.getName());
		UserGroup userGroup = groupRepo.findByGroupName(authentication.getName());
		
		List<Trip> trips = new ArrayList<>();
		addTripsForUser(trips, userGroup, user);

		if (trips.isEmpty()) {
			return "hello";
		} else {
			Trip t = trips.get(0);
			t.items2.add(newItem2);
			tripRepo.save(t);
			model.addAttribute("trips", trips);
		}
		return "redirect:/list";
	}

	@RequestMapping("/list/addItem3")
	public String addItem3(@Param("newItem3") String newItem3, Model model, Principal principal) {

		Authentication authentication = authenticationFacade.getAuthentication();
		User user = userRepo.findByUsername(authentication.getName());
		UserGroup userGroup = groupRepo.findByGroupName(authentication.getName());
		
		List<Trip> trips = new ArrayList<>();
		addTripsForUser(trips, userGroup, user);

		if (trips.isEmpty()) {
			return "hello";
		} else {
			Trip t = trips.get(0);
			t.items3.add(newItem3);
			tripRepo.save(t);
			model.addAttribute("trips", trips);
		}
		return "redirect:/list";
	}

	@RequestMapping("/list/addItem4")
	public String addItem4(@Param("newItem4") String newItem4, Model model, Principal principal) {

		Authentication authentication = authenticationFacade.getAuthentication();
		User user = userRepo.findByUsername(authentication.getName());
		UserGroup userGroup = groupRepo.findByGroupName(authentication.getName());
		
		List<Trip> trips = new ArrayList<>();
		addTripsForUser(trips, userGroup, user);

		if (trips.isEmpty()) {
			return "hello";
		} else {
			Trip t = trips.get(0);
			t.items4.add(newItem4);
			tripRepo.save(t);
			model.addAttribute("trips", trips);
		}
		return "redirect:/list";
	}

//	private void showRoleBasedDashboard(List<Trip> trips, User user) {
//		if(roleRepo.findByRole("MEMBER") != null  ) { 
//			
//			trips.get
//		}


}
