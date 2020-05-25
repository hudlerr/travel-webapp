package app;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;

//import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import app.domain.UserGroup;
import app.domain.Trip;
import app.domain.Role;
import app.domain.User;
import app.repository.GroupRepository;
import app.repository.RoleRepository;
import app.repository.UserRepository;

@SpringBootApplication
public class OrganizerApp implements CommandLineRunner {

	@Autowired
	private UserRepository userRepo;

	@Autowired
	private RoleRepository roleRepo;
	
	@Autowired
	private GroupRepository groupRepo;

	public static void main(String[] args) {
		SpringApplication.run(OrganizerApp.class, args);
	}

	@Override
	public void run(String... args) throws Exception {

		// TODO Task XXX
		if (userRepo.findByUsername("admin") == null) {

			BCryptPasswordEncoder pe = new BCryptPasswordEncoder();

			User user = new User();
			user.setUsername("admin");
			user.setPassword(pe.encode("admin"));
			user.setEmail("admin@admin.com");
			user.setFirstname("admin");
			user.setLastname("admin");
			//user.setGroup("admin");

			UserGroup group = new UserGroup();
			group.setId(0);
			group.setGroup("admin");
			groupRepo.save(group);
			
			app.domain.Role role = new Role();
			role.setId(0);
			role.setRole("TRIP LEADER");
			roleRepo.save(role);

			user.setRole(role);
			user.setGroup(group);
			userRepo.save(user);

			role = new Role();
			role.setRole("MEMBER");
			role.setId(1);
			roleRepo.save(role);
		}
		
	}
	
	@Bean
	public JavaMailSender getJavaMailSender() {
	    JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
	    mailSender.setHost("smtp.gmail.com");
	    mailSender.setPort(587);
	     
	    mailSender.setUsername("testspringbootapp123@gmail.com");
	    mailSender.setPassword("testing123*");
	     
	    Properties props = mailSender.getJavaMailProperties();
	    props.put("mail.transport.protocol", "smtp");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.debug", "true");
	     
	    return mailSender;
	}
	
}