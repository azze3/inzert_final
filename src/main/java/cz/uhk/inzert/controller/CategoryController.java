package cz.uhk.inzert.controller;

import cz.uhk.inzert.model.Category;
import cz.uhk.inzert.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/category")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value="/add", method= RequestMethod.GET)
    public ModelAndView addCategoryPage() {
        ModelAndView modelAndView = new ModelAndView("addCategory");
        modelAndView.addObject("category", new Category());
        return modelAndView;
    }

     @RequestMapping(value="/add/process", method=RequestMethod.POST)
    public ModelAndView addingCategory(@ModelAttribute Category category) {

        ModelAndView modelAndView = new ModelAndView("settingCategories");
        categoryService.addCategory(category);

        String message = "Category was successfully added.";
        modelAndView.addObject("message", message);

         List<Category> categories = categoryService.getCategories();
         modelAndView.addObject("categories", categories);

         return modelAndView;
    }


    @RequestMapping(value="/list")
    public ModelAndView listOfCategories() {
        ModelAndView modelAndView = new ModelAndView("settingCategories");

        List<Category> categories = categoryService.getCategories();
        modelAndView.addObject("categories", categories);

        return modelAndView;
    }

    @RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
    public ModelAndView editCategoryPage(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("editCategory");
        Category category = categoryService.getCategory(id);
        modelAndView.addObject("category",category);
        return modelAndView;
    }

    @RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
    public ModelAndView editingCategory(@ModelAttribute Category category, @PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("settingCategories");
        categoryService.updateCategory(category);
        String message = "Category was successfully edited.";
        modelAndView.addObject("message", message);

        List<Category> categories = categoryService.getCategories();
        modelAndView.addObject("categories", categories);

        return modelAndView;
    }

    @RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
    public ModelAndView deleteCategory(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("settingCategories");
        categoryService.deleteCategory(id);
        String message = "Category was successfully deleted.";
        modelAndView.addObject("message", message);
        return modelAndView;
    }
}
