package com.example.demo.controller;
 
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.api.service.ApiService;
import com.example.demo.db.entity.Information;
 
@Controller
@RequestMapping
public class HomeController {
    
    @Autowired
    private ApiService apiService;
    
	@GetMapping(value="/index")
    public String index(Model model) throws IOException {
		//model.addAttribute("locations", apiService.search());
		return "index";
    }
	
	@GetMapping(value="/process")
	public String process() {
		return "process";
	}
	
	@GetMapping(value="/area")
	public String area() {
		return "area";
	}
	
	@GetMapping(value="/map")
	public String map() {
	    return "map";
	}

	@GetMapping(value="/boardlist")
	public String boardlist(Model model) {
		model.addAttribute("list", apiService.infoList());
	    return "boardlist";
	}

	@PostMapping(value="/boardinsert")
	public String insertProc(Model model, @RequestParam String title, @RequestParam String content ) {
		Information info = apiService.insertInformation(Information.builder().title(title).content(content).build());
		return "redirect:/boardlist";
	}
	//@GetMapping(value="/boardview")
	//public String boardview() {
	//    return "boardview";
	//}
	@GetMapping("/boardview/{id}")
	public String viewBoard(Model model, @PathVariable Long id) {
		Information info = apiService.findInfo(id);
		model.addAttribute("info", info);
		System.out.println(info);
		return "boardview";
	}
	@GetMapping(value="/boardinsert")
	public String boardinsert() {
	    return "boardinsert";
	}
	@GetMapping(value="/login")
	public String login() {
	    return "loginpage";
	}
	
	@GetMapping(value="/join")
	public String join() {
	    return "join";
	}
	
}