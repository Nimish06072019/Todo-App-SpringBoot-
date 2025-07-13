package com.in28minutes.springboot.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {

	@RequestMapping("/say-hello")
	@ResponseBody
	public String sayHello() {
		return "Hello! What are you learning today ?";
	}

	@RequestMapping("/say-hello-html")
	@ResponseBody
	public String sayHelloHtml() {
		StringBuffer sb = new StringBuffer();
		sb.append("<!DOCTYPE html>");
		sb.append("<html lang=\"en\">");
		sb.append("<head>");
		sb.append("    <meta charset=\"UTF-8\">");
		sb.append("    <title>My First Page</title>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("    <h1>Welcome to My Web Page</h1>");
		sb.append("    <p>This is a simple HTML page.</p>");
		sb.append("    <a href=\"https://www.google.com\" target=\"_blank\">Go to Google</a>");
		sb.append("</body>");
		sb.append("</html>");
		return sb.toString();
	}
	
	@RequestMapping("say-hello-jsp")
	public String sayHelloJsp() {
		return "sayHello";
	}

}
