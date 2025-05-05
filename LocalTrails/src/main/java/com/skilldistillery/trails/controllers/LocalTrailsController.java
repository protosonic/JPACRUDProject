package com.skilldistillery.trails.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.trails.data.LocalTrailsDAO;
import com.skilldistillery.trails.entities.LocalTrails;

@Controller
public class LocalTrailsController {

	@Autowired
	private LocalTrailsDAO trailsDao;
	// Homepage
	@RequestMapping(path = { "/", "home" })
	public ModelAndView homePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	// Read all trails
	@RequestMapping(path = "showAllTrails")
	public ModelAndView showAllTrails() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("showAllTrails");
		mv.addObject("trailList", trailsDao.findAll());
		return mv;
	}

	@RequestMapping(path = "createTrail", method = RequestMethod.GET)
	public ModelAndView showCreateTrailForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("createTrail");
		mv.addObject("trail", new LocalTrails());
		return mv;
	}
	@RequestMapping(path = "createTrail", method = RequestMethod.POST)
	public ModelAndView createTrail(@ModelAttribute("trail") LocalTrails trail) {
		ModelAndView mv = new ModelAndView();
		trailsDao.createTrail(trail);
		mv.setViewName("redirect:showAllTrails");
		return mv;
	}
	
    @RequestMapping(path = "updateForm/{trailId}", method = RequestMethod.GET)
    public ModelAndView showUpdateForm(@PathVariable int trailId) {
        ModelAndView mv = new ModelAndView();
        LocalTrails trail = trailsDao.findById(trailId);
        mv.addObject("trail", trail);
        mv.setViewName("updateTrail");
        return mv;
    }

    @RequestMapping(path = "updateTrail/{trailId}", method = RequestMethod.POST)
    public ModelAndView updateTrail(@PathVariable int trailId, @ModelAttribute LocalTrails trail) {
        LocalTrails updatedTrail = trailsDao.updateTrail(trailId, trail);
        ModelAndView mv = new ModelAndView();
        mv.addObject("trail", updatedTrail);
        mv.addObject("trailList", trailsDao.findAll());
        mv.setViewName("showAllTrails");
        return mv;
    }
}
