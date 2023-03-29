package com.rossi21.burgers.repositories;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.rossi21.burgers.models.Burger;

@Repository
public interface BurgerRepository extends CrudRepository<Burger, Long> {
	List<Burger> findAll();
	List<Burger> findByNotesContaining(String search);
	Long countByNameContaining(String search);
	Long deleteByNameStartingWith(String search);
}
