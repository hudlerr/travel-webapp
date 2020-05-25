package app.repository;

import org.springframework.data.repository.CrudRepository;

import app.domain.Role;

public interface RoleRepository extends CrudRepository<Role, Integer> {
	Role findById(int id);
	Role findByRole(String roleName);
}