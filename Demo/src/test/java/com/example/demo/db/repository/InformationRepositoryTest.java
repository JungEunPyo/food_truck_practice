package com.example.demo.db.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.db.entity.Information;

//@SpringBootTest
class InformationRepositoryTest {

	@Autowired
	private InformationRepository infoRepository;
	@Autowired
	private UserRepository userRepository;
	//@Test
	public void create() {
		Information info = Information.builder()
				.title("title1")
				.content("content1")
				.user(userRepository.findById(6L).get())
				.build();
		infoRepository.save(info);
	}
	
	//@Test
	public void read() {
		infoRepository.findById(4L).ifPresent(i->{
			System.out.println(i.getUser().getUserId());
		});
		
		
	}
	
	//@Test
	public void update() {
		infoRepository.findById(4L).ifPresent(i->{
			i.setTitle("바뀐 제목");
			Information info = infoRepository.save(i);
			System.out.println(info);
		});
	}
	
	//@Test
	public void delete() {
		infoRepository.deleteById(1L);
		
	}
}
