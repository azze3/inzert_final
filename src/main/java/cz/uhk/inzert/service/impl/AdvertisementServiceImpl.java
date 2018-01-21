package cz.uhk.inzert.service.impl;

import cz.uhk.inzert.dao.AdvertisementDAO;
import cz.uhk.inzert.model.Advertisement;
import cz.uhk.inzert.service.AdvertisementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AdvertisementServiceImpl implements AdvertisementService {

    @Autowired
    private AdvertisementDAO advertisementDAO;

    public void addAdvertisement(Advertisement advertisement) { advertisementDAO.addAdvertisement(advertisement); }
    public void updateAdvertisement(Advertisement advertisement) { advertisementDAO.updateAdvertisement(advertisement); }
    public void deleteAdvertisement(int id) { advertisementDAO.deleteAdvertisement(id); }
    public List<Advertisement> getAdvertisements() { return advertisementDAO.getAdvertisements(); }
    public Advertisement getAdvertisement(int id) { return advertisementDAO.getAdvertisement(id); }
}
