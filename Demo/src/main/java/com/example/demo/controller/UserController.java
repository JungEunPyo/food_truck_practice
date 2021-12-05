package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.db.entity.User;
import com.example.demo.db.repository.UserRepository;

@RestController
@RequestMapping("/user")
public class UserController{
	
	@Autowired
	private UserRepository userRepository;
	
	@PostMapping("")
	public User create(@RequestBody User user) {
		return userRepository.save(user);
	}
	
	@GetMapping("{id}")
	public User read(@PathVariable Long id) {
		return userRepository.findById(id).get();
	}
	
	@PutMapping("")
	public User update(@RequestBody User user) {
		return userRepository.save(user);
	}
	
	@DeleteMapping("{id}")
	public void delete(@PathVariable Long id) {
		userRepository.deleteById(id);
	}

}
