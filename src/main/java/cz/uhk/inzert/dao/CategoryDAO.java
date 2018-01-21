package cz.uhk.inzert.dao;

import cz.uhk.inzert.model.Category;
import java.util.List;

public interface CategoryDAO {
    public void addCategory(Category category);
    public void updateCategory(Category category);
    public List<Category> getCategories();
    public Category getCategory(int id);
    public void deleteCategory(int id);

}
