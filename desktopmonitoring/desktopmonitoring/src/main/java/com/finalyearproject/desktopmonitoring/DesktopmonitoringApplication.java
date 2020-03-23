package com.finalyearproject.desktopmonitoring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * @author ARSLAN Q
 *
 */
@SpringBootApplication
@ComponentScan(basePackages= {"com.fyp"})

public class DesktopmonitoringApplication {

	static {

        System.setProperty("java.awt.headless", "false");
}
	public static void main(String[] args) {
		SpringApplication.run(DesktopmonitoringApplication.class, args);
	}
	
    
}
