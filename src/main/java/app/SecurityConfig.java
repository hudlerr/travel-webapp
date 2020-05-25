package app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

//@Order(67)
@EnableWebSecurity
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    protected void configure(HttpSecurity http) throws Exception {
    	//http.authorizeRequests().antMatchers("/").permitAll();
    	http.antMatcher("/**").authorizeRequests().anyRequest().permitAll();
    	
    	http
      // SECURE COMMUNICATION
  	// TODO Task
	    	.requiresChannel ()
	    	.anyRequest()
	    	.requiresSecure().and()
  	// AUTHENTICATION
		    .formLogin()
		    .loginPage("/user-login") 
			.loginProcessingUrl("/login")
				.defaultSuccessUrl("/list", true)
				.failureUrl("/error-login")
				.permitAll()
		.and()
			.logout()
				.invalidateHttpSession(true)
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
				.logoutSuccessUrl("/")
				.permitAll()
		// AUTHORIZATION
		// TODO Task
		.and()
		//.antMatchers("/login")
		.antMatcher("/**")
		.authorizeRequests()
		.anyRequest()
				.permitAll()
			 
				
//				.antMatchers("/list/**").hasAnyRole("TRIP LEADER", "MEMBER")
//				.antMatchers("/generatePlan/**").hasRole("TRIP LEADER")
//				    .antMatchers("/dashboard/**").hasRole("TRIP LEADER")
//					.antMatchers("/login/**").hasAnyRole("MEMBER", "TRIP LEADER")
//					.antMatchers("/hello/**").hasAnyRole("MEMBER", "TRIP LEADER")
//					.anyRequest().authenticated()  // all requests ABOVE this statement require authentication
		.and()
			// to redirect the user when trying to access a resource to which access is not granted
	        .exceptionHandling().accessDeniedPage("/login-form");
    }

	@Autowired 
	private UserDetailsService userDetailsService; 	

    @Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		BCryptPasswordEncoder pe = new  BCryptPasswordEncoder();
		auth.userDetailsService(userDetailsService).passwordEncoder(pe);
		
	}
    
}
	