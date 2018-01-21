package cz.uhk.inzert.dao;

import cz.uhk.inzert.model.Advertisement;
import java.util.List;


public interface AdvertisementDAO {
    public void addAdvertisement(Advertisement advertisement);
    public void updateAdvertisement(Advertisement advertisement);
    public List<Advertisement> getAdvertisements();
    public Advertisement getAdvertisement(int id);
    public void deleteAdvertisement(int id);
}
