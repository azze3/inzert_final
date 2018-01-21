package cz.uhk.inzert.dao;

import cz.uhk.inzert.model.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void addCategory(Category category) {
        getCurrentSession().save(category);
    }

    @Override
    public void updateCategory(Category category) {
        Category categoryToUpdate = getCategory(category.getId());
        categoryToUpdate.setTitle(category.getTitle());
        getCurrentSession().update(categoryToUpdate);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Category> getCategories() {
        return getCurrentSession().createQuery("from Category").list();
    }

    @Override
    public Category getCategory(int id) {
        Category category = (Category) getCurrentSession().get(Category.class, id);
        return category;
    }

    @Override
    public void deleteCategory(int id) {
        Category category = getCategory(id);
        if (category != null)
            getCurrentSession().delete(category);

    }

}
