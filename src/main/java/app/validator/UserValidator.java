package app.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import app.domain.User;
import app.repository.UserRepository;
/**
 * Class for validating users registration to make sure all fields are filled in correctly and none are left blank;
 emails must be written in the correct "@" format.
 * 
 *
 *
 */
@Component
public class UserValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}
	
	private UserRepository userRepo;
	
	public UserValidator(UserRepository userRepo) {
		this.userRepo = userRepo;
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		User u = (User) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname","", "Field cannot be empty.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastname","", "Field cannot be empty.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email","", "Field cannot be empty.");
		

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username","", "Field cannot be empty.");
		
		//Access DB via userRepo instance
//        if (userRepo.findByUsername(u.getUsername()) != null) {
//            errors.rejectValue("username", "Duplicate.userForm.username");
//        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");

        if (!u.getPasswordConfirm().equals(u.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
        }

	}

}
