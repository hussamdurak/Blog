package com.hussam.blog;



import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Models.Yazilar;


@Controller
public class IndexController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index(Model model) {
		
		Session sesi = sf.openSession();
		List<Yazilar> ls = new ArrayList<Yazilar>();
		ls = sesi.createQuery("from Yazilar").list();
		sesi.close();
		
		model.addAttribute("ls", ls);
		
		return "index";
	}

}
