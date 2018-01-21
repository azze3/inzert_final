package cz.uhk.inzert.dao.impl;

import cz.uhk.inzert.dao.AdvertisementDAO;
import cz.uhk.inzert.model.Advertisement;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class AdvertisementDAOImpl implements AdvertisementDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void addAdvertisement(Advertisement advertisement) {
        getCurrentSession().save(advertisement);
    }

    @Override
    public void updateAdvertisement(Advertisement advertisement) {
        Advertisement advertisementToUpdate = getAdvertisement(advertisement.getId());
        advertisementToUpdate.setTitle(advertisement.getTitle());
        getCurrentSession().update(advertisementToUpdate);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Advertisement> getAdvertisements() {
        return getCurrentSession().createQuery("from Advertisement").list();
    }

    @Override
    public Advertisement getAdvertisement(int id) {
        Advertisement advertisement = (Advertisement) getCurrentSession().get(Advertisement.class, id);
        return advertisement;
    }

    @Override
    public void deleteAdvertisement(int id) {
        Advertisement advertisement = getAdvertisement(id);
        if (advertisement != null)
            getCurrentSession().delete(advertisement);
    }
}
