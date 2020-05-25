package app.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import app.domain.*;
/**
 * Class for validating trips to make sure all the fields are filled in correctly,
 additionally no fields can be left blank
 * 
 *
 */
public class TripValidator implements Validator{
	
	public boolean supports(Class<?> clazz) {
		return Trip.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Trip t = (Trip) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "destination", "", "Field cannot be empty.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "checkin", "", "Field cannot be empty.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "checkout", "", "Field cannot be empty.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "budget", "", "Field cannot be empty.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name1", "", "Field cannot be empty.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name2", "", "Field cannot be empty.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name3", "", "Field cannot be empty.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name4", "", "Field cannot be empty.");
		
//		if (t.getCheckout().equals(t.getCheckin())) {
//			errors.rejectValue("checkin", "", "The dates cannot be the same.");
//		} else if (t.getCheckout().before(t.getCheckin())) {
//			errors.rejectValue("checkout", "", "Checkin date cannot be after checkout.");
//		} else if (t.getCheckin().after(t.getCheckout())) {
//			errors.rejectValue("checkin", "", "Checkin date cannot be after checkout.");
//		} else if (t.getBudget() <= 20) {
//			errors.rejectValue("budget", "", "More fun comes with a higher budget...");
//		}
		
		
	}

}
