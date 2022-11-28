package egovframework.example.classlist.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.sample.service.SampleDefaultVO;

@Controller
public class ClassListController {
	@RequestMapping(value = "/home.do")
	public String home(ModelMap model) throws Exception {
		
		return "classproject/home";
	}


}
