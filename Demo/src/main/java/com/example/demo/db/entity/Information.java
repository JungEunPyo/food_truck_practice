package com.example.demo.db.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Builder
public class Information {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long infoId;
	private String title;
	private String content;
	
	@ManyToOne
	private User user;
	
	@ManyToOne
	private Area area;
}
