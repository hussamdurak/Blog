package com.hussam.blog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/inc")
public class IncluderController {

	// header �a��ran fonksiyon
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header() {
		return "inc/header";
	}

	// css �a��ran fonksiyon
	@RequestMapping(value = "/css", method = RequestMethod.GET)
	public String css() {
		return "inc/css";
	}


	// js �a��ran fonksiyon
	@RequestMapping(value = "/js", method = RequestMethod.GET)
	public String js() {
		return "inc/js";
	}

	//  footer �a��ran fonksiyon
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer() {
		return "inc/footer";
	}


}
