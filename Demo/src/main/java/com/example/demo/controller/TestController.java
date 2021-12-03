package com.example.demo.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.api.dto.FoodTruckInfo;
import com.example.demo.api.service.ApiService;
import com.example.demo.db.entity.Area;

@RestController
@RequestMapping("/api")
public class TestController {
	
	@Autowired
	private ApiService apiService;
	
	@ResponseBody
	@GetMapping("/getDataByDB")
	public List<Area> getDataByDB() throws IOException {
		List<Area> list = apiService.searchByData();
		//return geoApiService.getLatLng(list);
		//return list;
		return list;
	}
	
	@ResponseBody
	@GetMapping("/getData/{pageNo}")
	public List<FoodTruckInfo> getData(@PathVariable int pageNo) throws IOException {
		List<FoodTruckInfo> list = apiService.searchByNumber(pageNo);
		//return geoApiService.getLatLng(list);
		//return list;
		return list;
	}

}
