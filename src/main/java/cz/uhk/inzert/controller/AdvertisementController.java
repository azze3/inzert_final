package cz.uhk.inzert.controller;

import cz.uhk.inzert.model.Advertisement;
import cz.uhk.inzert.service.AdvertisementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value="/advertisement")
public class AdvertisementController {

    @Autowired
    private AdvertisementService advertisementService;

    @RequestMapping(value="/add", method= RequestMethod.GET)
    public ModelAndView addAdvertisementPage() {
        ModelAndView modelAndView = new ModelAndView("addAdvertisement");
        modelAndView.addObject("advertisement", new Advertisement());
        return modelAndView;
    }

    @RequestMapping(value="/add/process", method=RequestMethod.POST)
    public ModelAndView addingAdvertisement(@ModelAttribute Advertisement advertisement) {

        ModelAndView modelAndView = new ModelAndView("settingAdvertisements");

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        advertisement.setCreated(date);

        advertisementService.addAdvertisement(advertisement);

        String message = "Advertisement was successfully added.";
        modelAndView.addObject("message", message);

        List<Advertisement> advertisements = advertisementService.getAdvertisements();
        modelAndView.addObject("advertisements", advertisements);

        return modelAndView;
    }


    @RequestMapping(value="/list")
    public ModelAndView listOfAdvertisements() {
        ModelAndView modelAndView = new ModelAndView("settingAdvertisements");

        List<Advertisement> advertisements = advertisementService.getAdvertisements();
        modelAndView.addObject("advertisements", advertisements);

        return modelAndView;
    }

    @RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
    public ModelAndView editAdvertisementPage(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("editAdvertisement");
        Advertisement advertisement = advertisementService.getAdvertisement(id);
        modelAndView.addObject("advertisement",advertisement);
        return modelAndView;
    }

    @RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
    public ModelAndView editingAdvertisement(@ModelAttribute Advertisement advertisement, @PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("settingAdvertisements");
        advertisementService.updateAdvertisement(advertisement);
        String message = "Advertisement was successfully edited.";
        modelAndView.addObject("message", message);

        List<Advertisement> advertisements = advertisementService.getAdvertisements();
        modelAndView.addObject("advertisements", advertisements);

        return modelAndView;
    }

    @RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
    public ModelAndView deleteAdvertisement(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("settingAdvertisements");
        advertisementService.deleteAdvertisement(id);
        String message = "Advertisement was successfully deleted.";
        modelAndView.addObject("message", message);

        List<Advertisement> advertisements = advertisementService.getAdvertisements();
        modelAndView.addObject("advertisements", advertisements);

        return modelAndView;
    }
}
