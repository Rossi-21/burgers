package com.rossi21.burgers.services;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.rossi21.burgers.models.Burger;
import com.rossi21.burgers.repositories.BurgerRepository;
@Service  
public class BurgerService {
	 // adding the book repository as a dependency
    private final BurgerRepository burgerRepository;
    
    public BurgerService(BurgerRepository burgerRepository) {
        this.burgerRepository = burgerRepository;
    }
    // returns all the books
    public List<Burger> allBurgers() {
        return burgerRepository.findAll();
    }
    // creates a book
    public Burger createBurger(Burger b) {
        return burgerRepository.save(b);
    }
    // retrieves a book
    public Burger findBook(Long id) {
        Optional<Burger> optionalBurger = burgerRepository.findById(id);
        if(optionalBurger.isPresent()) {
            return optionalBurger.get();
        } else {
            return null;
        }
    }
	public Burger updateBurger(Burger b) {
		// TODO Auto-generated method stub
		return burgerRepository.save(b);
	}
	public void deleteBurger(Long id) {
		// TODO Auto-generated method stub
		  burgerRepository.deleteById(id);
	}
}
