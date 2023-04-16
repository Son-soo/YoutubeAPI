package com.ssm.youtube.contoller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/view")
@Controller
public class WebViewController {
	
	private static final Logger logger  = LoggerFactory.getLogger(WebViewController.class);

	
	@GetMapping("/searchView") 
	public String searchView(Model model) {
		logger.info("into /searchView");
		return "searchView";
	}
	
	/*
	 * @GetMapping("/search") public String search(Model model) {
	 * 
	 * logger.info("into /search"); return "search"; }
	 * 
	 * @GetMapping("/searchLoad") public String searchLoad(Model model) {
	 * 
	 * logger.info("into /searchLoad"); return "searchLoad"; }
	 */

}
