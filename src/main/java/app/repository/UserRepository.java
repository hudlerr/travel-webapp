package app.repository;

import javax.validation.Valid;

import org.springframework.data.repository.CrudRepository;
import app.domain.User;


public interface UserRepository extends CrudRepository<User, Integer> {
	User findById(int id);
	User findByUsername(String username);

}