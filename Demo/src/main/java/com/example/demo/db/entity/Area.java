package com.example.demo.db.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Builder
public class Area {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long areaId;
	private String prmisnZoneNm;
	private String lnmadr;
	private String rdnmadr;
	private double latitude;
	private double longitude;
	

}
