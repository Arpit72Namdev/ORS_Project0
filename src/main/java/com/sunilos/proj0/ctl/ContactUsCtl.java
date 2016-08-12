package com.sunilos.proj0.ctl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Contains navigation logics for ContactUs .
 * 
 * @author Business Delegate
 * @version 1.0
 * @Copyright (c) SunilOS
 */

@Controller
@RequestMapping(value = "/ContactUs")
public class ContactUsCtl {

	@RequestMapping(method = RequestMethod.GET)
	public String display(ModelMap model) {
		return "ContactUs";
	}

}
