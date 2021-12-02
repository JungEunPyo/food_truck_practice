package com.example.demo.db.repository;

import java.util.Optional;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.db.entity.User;

@SpringBootTest
class UserRepositoryTest{

	@Autowired
	private UserRepository userRepository;
	//@Test
	public void create() {
		User user = User.builder()
				.userName("root")
				.userPassword("1234")
				.build();
		
		User createdUser = userRepository.save(user);
		System.out.println("create: " + createdUser);

	}
	
	//@Test
	//@Transactional
	public void read() {
		User user = userRepository.findById(6L).get();
		user.getInfoList().stream().forEach(e->{
			System.out.println(e.getTitle());
		});
	}

	//@Test
	public void update() {
		Optional<User> user = userRepository.findById(6L);
		user.ifPresent(r->{
			r.setUserName("uRoot");
			userRepository.save(r);
		});
	}
	
	//@Test
	public void delete() {
		userRepository.deleteById(6L);
		
	}
}
