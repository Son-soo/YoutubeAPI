package com.ssm.youtube.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import org.springframework.stereotype.Service;

import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.model.ResourceId;
import com.google.api.services.youtube.model.SearchListResponse;
import com.google.api.services.youtube.model.SearchResult;
import com.google.api.services.youtube.model.Thumbnail;

@Service
public class YoutubeSearchServiceImpl implements YoutubeSearchService {

	/** Global instance of the HTTP transport. */
	private static final HttpTransport HTTP_TRANSPORT = new NetHttpTransport();

	/** Global instance of the JSON factory. */
	private static final JsonFactory JSON_FACTORY = new JacksonFactory();

	/**
	 * Global instance of the max number of videos we want returned (50 = upper
	 * limit per page).
	 */
	private static final long NUMBER_OF_VIDEOS_RETURNED = 25;

	/** Global instance of Youtube object to make all API requests. */
	private static YouTube youtube;

	@Override
	public List<SearchResult> searchSSM(String queryTerm) {
		String PROPERTIES_FILENAME = "youtube.properties";
		
		// TODO Auto-generated method stub
		// Read the developer key from youtube.properties
		Properties properties = new Properties();
		try {
			InputStream in = YoutubeSearchServiceImpl.class.getResourceAsStream("/" + PROPERTIES_FILENAME);
			properties.load(in);

		} catch (IOException e) {
			System.err.println(
					"There was an error reading " + PROPERTIES_FILENAME + ": " + e.getCause() + " : " + e.getMessage());
			System.exit(1);
		}

		try {
			/*
			 * The YouTube object is used to make all API requests. The last argument is
			 * required, but because we don't need anything initialized when the HttpRequest
			 * is initialized, we override the interface and provide a no-op function.
			 */
			youtube = new YouTube.Builder(HTTP_TRANSPORT, JSON_FACTORY, new HttpRequestInitializer() {
				public void initialize(HttpRequest request) throws IOException {
				}
			}).setApplicationName("youtube-cmdline-search-sample").build();

			// Get query term from user.
//			String queryTerm = getInputQuery();

			YouTube.Search.List search = youtube.search().list("id,snippet");
			/*
			 * It is important to set your API key from the Google Developer Console for
			 * non-authenticated requests (found under the Credentials tab at this link:
			 * console.developers.google.com/). This is good practice and increased your
			 * quota.
			 */
			String apiKey = properties.getProperty("youtube.apikey");
			search.setKey(apiKey);
			search.setQ(queryTerm);
			/*
			 * We are only searching for videos (not playlists or channels). If we were
			 * searching for more, we would add them as a string like this:
			 * "video,playlist,channel".
			 */
			search.setType("video");
			/*
			 * This method reduces the info returned to only the fields we need and makes
			 * calls more efficient.
			 */
			search.setFields("items(id/kind,id/videoId,snippet/title,snippet/thumbnails/default/url)");
			search.setMaxResults(NUMBER_OF_VIDEOS_RETURNED);
			SearchListResponse searchResponse = search.execute();

			List<SearchResult> searchResultList = searchResponse.getItems();

			if (searchResultList != null) {
				prettyPrint(searchResultList.iterator(), queryTerm);
			}

			return searchResultList;

		} catch (GoogleJsonResponseException e) {
			System.err.println(
					"There was a service error: " + e.getDetails().getCode() + " : " + e.getDetails().getMessage());
		} catch (IOException e) {
			System.err.println("There was an IO error: " + e.getCause() + " : " + e.getMessage());
		} catch (Throwable t) {
			t.printStackTrace();
		}
		return null;

	}

	/*
	 * Returns a query term (String) from user via the terminal.
	 */
	private static String getInputQuery() throws IOException {

		String inputQuery = "";

		System.out.print("Please enter a search term: ");
		BufferedReader bReader = new BufferedReader(new InputStreamReader(System.in));
		inputQuery = bReader.readLine();

		if (inputQuery.length() < 1) {
			// If nothing is entered, defaults to "YouTube Developers Live."
			inputQuery = "YouTube Developers Live";
		}
		return inputQuery;
	}

	/*
	 * Prints out all SearchResults in the Iterator. Each printed line includes
	 * title, id, and thumbnail.
	 *
	 * @param iteratorSearchResults Iterator of SearchResults to print
	 *
	 * @param query Search query (String)
	 */
	private static void prettyPrint(Iterator<SearchResult> iteratorSearchResults, String query) {

		System.out.println("\n=============================================================");
		System.out.println("   First " + NUMBER_OF_VIDEOS_RETURNED + " videos for search on \"" + query + "\".");
		System.out.println("=============================================================\n");

		if (!iteratorSearchResults.hasNext()) {
			System.out.println(" There aren't any results for your query.");
		}

		while (iteratorSearchResults.hasNext()) {

			SearchResult singleVideo = iteratorSearchResults.next();
			ResourceId rId = singleVideo.getId();

			// Double checks the kind is video.
			if (rId.getKind().equals("youtube#video")) {
				Thumbnail thumbnail = singleVideo.getSnippet().getThumbnails().get("default");

				System.out.println(" Video Id" + rId.getVideoId());
				System.out.println(" Title: " + singleVideo.getSnippet().getTitle());
				System.out.println(" Thumbnail: " + thumbnail.getUrl());
				System.out.println("\n-------------------------------------------------------------\n");
			}
		}
	}

}
