package org.niit.com;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello") //http://localhost:8080/项目名称/hello
public class HelloController {
	
	@RequestMapping()
	public String hello(ModelMap model){
		model.addAttribute("msg", "This is my first Spring mvc page");
		return "hello";
	}
	@RequestMapping("/myform")
	public String showInfo(@RequestParam("usename") String myuser,ModelMap model){
		model.addAttribute("abc", myuser);
		return "show";
	}
}
