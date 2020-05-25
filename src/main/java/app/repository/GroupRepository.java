package app.repository;

import org.springframework.data.repository.CrudRepository;

import app.domain.UserGroup;

public interface GroupRepository extends CrudRepository<UserGroup, Integer> {
	UserGroup findById(int id);
	UserGroup findByGroupName(String groupName);
}