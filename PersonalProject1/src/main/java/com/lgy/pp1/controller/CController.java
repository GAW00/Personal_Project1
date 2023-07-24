package com.lgy.pp1.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lgy.pp1.dto.CDto;
import com.lgy.pp1.service.CService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CController {
	@Autowired
	private CService service;
	
	@RequestMapping("/myclub")
	public String myclub(Model model) {
		log.info("@# CController.myclub");
		
		ArrayList<CDto> clublist = service.clublist();
		model.addAttribute("clublist", clublist);
		
		return "myclub";
	}
	
//	@RequestMapping("/")
//	public String myclub(Model model) {
//		log.info("@# CController.");
//		
//		return "";
//	}
	
}
