package com.assist4it.firstapp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/producer")
public class HomeController {

	@GetMapping("/getName")
	public Employee getName() {
		Employee emp = new Employee();
		emp.setId(1);
		emp.setName("Amar");
		return emp;
	}
}
