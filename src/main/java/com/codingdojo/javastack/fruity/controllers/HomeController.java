package com.codingdojo.javastack.fruity.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController {
 
 @RequestMapping("/")
 public String index() {
		
		return "redirect:/omikuji";
	}
 
 @RequestMapping("/omikuji")
 public String omiform() {
	 return "index.jsp";
 }

 
 @RequestMapping(value="/login", method=RequestMethod.POST)
 public String login(
		 
		@RequestParam(value="number") String number,
     	@RequestParam(value="city") String city,
     	@RequestParam(value="doing") String doing,
     	@RequestParam(value="thing") String thing,
     	@RequestParam(value="nice") String nice,
     	HttpSession session
		 )
 {
	 	session.setAttribute("nice", nice);
	 	session.setAttribute("thing", thing);
	 	session.setAttribute("doing", doing);
	 	session.setAttribute("city", city);
	 	session.setAttribute("number", number);
     	
     	return "redirect:/omikiju/show";
 }
 
 @RequestMapping("/omikiju/show")
 public String showSlip(HttpSession session, Model model) {
	 
	 	String nice=(String) session.getAttribute("nice");
	 	String thing = (String) session.getAttribute("thing");
	 	String doing = (String) session.getAttribute("doing");
	 	String city = (String) session.getAttribute("city");
	 	String num = (String) session.getAttribute("number");
	 
	 	model.addAttribute("doing", doing);
	 	model.addAttribute("thing", thing);
	 	model.addAttribute("nice", nice);
	 	model.addAttribute("city", city);
	 	model.addAttribute("num", num);
	 
	 return "showCount.jsp";
 }
}
