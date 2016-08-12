package com.sunilos.proj0.ctl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Contains navigation logics for   Welcome  page.
 * 
 * @author Business Delegate
 * @version 1.0
 * @Copyright (c) SunilOS
 */


@Controller
@RequestMapping(value = "/Welcome")
public class WelcomeCtl {

	@RequestMapping(method = RequestMethod.GET)
	
	public String display(ModelMap model) {
		return "Welcome";
	}
}
