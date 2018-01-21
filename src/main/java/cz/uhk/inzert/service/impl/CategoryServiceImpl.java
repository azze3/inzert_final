package cz.uhk.inzert.service.impl;

import cz.uhk.inzert.dao.CategoryDAO;
import cz.uhk.inzert.model.Category;
import cz.uhk.inzert.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryDAO categoryDAO;

    public void addCategory(Category category) { categoryDAO.addCategory(category); }
    public void updateCategory(Category category) { categoryDAO.updateCategory(category); }
    public void deleteCategory(int id) { categoryDAO.deleteCategory(id); }
    public List<Category> getCategories() { return categoryDAO.getCategories(); }
    public Category getCategory(int id) { return categoryDAO.getCategory(id); }
}
