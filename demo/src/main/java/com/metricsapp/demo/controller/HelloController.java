package com.metricsapp.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

	@GetMapping("/hello")
	public String hello_index() {
		return "hello";
	}

	@GetMapping("/")
	public String index() {
		return "hello";
	}

}