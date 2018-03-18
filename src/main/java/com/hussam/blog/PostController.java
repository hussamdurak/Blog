package com.hussam.blog;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Models.Yazilar;

@Controller
public class PostController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value="/post/{id}", method=RequestMethod.GET)
	public String post(@PathVariable Integer id, Model model) {
		
		Session sesi = sf.openSession();
		List<Yazilar> ls = new ArrayList<Yazilar>();
		ls = sesi.createQuery("from Yazilar where yid = '"+id+"' ").list();
		sesi.close();
		
		model.addAttribute("ls", ls);
		
		
		return "post";
	}

}
