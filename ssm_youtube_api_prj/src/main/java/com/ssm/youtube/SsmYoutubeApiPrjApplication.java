package com.ssm.youtube;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;



@SpringBootApplication(scanBasePackages = {"com.ssm.youtube","com.ssm.youtube.controller","com.ssm.youtube.service"})
public class SsmYoutubeApiPrjApplication {

	private static final Logger logger  = LoggerFactory.getLogger(SsmYoutubeApiPrjApplication.class);
			
	public static void main(String[] args) {
		SpringApplication.run(SsmYoutubeApiPrjApplication.class, args);
		
		logger.info("Sping boot Logback {}", SsmYoutubeApiPrjApplication.class.getSimpleName());
	}

}
