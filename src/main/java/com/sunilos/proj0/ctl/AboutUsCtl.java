package com.sunilos.proj0.ctl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Contains navigation logics for Welcome page.
 * 
 * @author Business Delegate
 * @version 1.0
 * @Copyright (c) SunilOS
 */

@Controller
@RequestMapping(value = "/AboutUs")
public class AboutUsCtl {

	@RequestMapping(method = RequestMethod.GET)
	public String display(ModelMap model) {
		return "AboutUs";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/javadoc")
	public String javadoc(ModelMap model) {
		return "redirect:/doc/index.html";
	}
}
