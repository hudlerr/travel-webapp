package app.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import app.domain.Trip;

public interface TripRepository extends CrudRepository<Trip, Integer> {
    List<Trip> findByDestination(String destination);    
    List<Trip> findByCheckin(String checkin);
    List<Trip> findByCheckout(String checkout);
    List<Trip> findByBudget(String budget);
    Trip findById(int id);
}
