package com.hafidzubaidillah.mini;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class MiniApplication {

	public static void main(String[] args) {
		SpringApplication.run(MiniApplication.class, args);
	}

	@GetMapping("/")
	public String root()
	{
		return "Hello World";
	}
}
