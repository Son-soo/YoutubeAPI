package com.ssm.youtube.service;

import java.util.List;
import com.google.api.services.youtube.model.SearchResult;

public interface YoutubeSearchService {

	List<SearchResult> searchSSM(String queryTerm);
}
