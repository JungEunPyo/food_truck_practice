package com.example.demo.db.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Builder
@ToString(exclude={"areaInfoList"}) //overflow 막기 위해서 
public class Area {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long areaId;
	private String prmisnZoneNm;
	private String lnmadr;
	private String rdnmadr;
	private double latitude;
	private double longitude;
	
	@OneToMany(fetch=FetchType.LAZY, mappedBy="area")
	private List<Information> areaInfoList;

}
