package com.ssm.youtube.contoller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.api.services.youtube.model.SearchResult;
import com.ssm.youtube.service.YoutubeSearchService;

@RequestMapping("/yapi/v1")
@RestController
public class YoutubeSearchController {

	private static final Logger logger  = LoggerFactory.getLogger(YoutubeSearchController.class);

	@Autowired
	YoutubeSearchService searching;

	@GetMapping("/search")
	public List<SearchResult> searchSSM(@RequestParam String queryTerm) {
		logger.info("into /search queryTerm :: " + queryTerm);
		
		List<SearchResult> search = searching.searchSSM(queryTerm);
		return search;
	}
	
}
