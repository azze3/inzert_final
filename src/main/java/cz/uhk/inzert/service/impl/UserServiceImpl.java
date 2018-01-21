package cz.uhk.inzert.service.impl;

import cz.uhk.inzert.dao.UserDAO;
import cz.uhk.inzert.model.User;
import cz.uhk.inzert.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    public void addUser(User user) {
        userDAO.addUser(user);
    }
    public void updateUser(User user) { userDAO.updateUser(user); }
    public void deleteUser(int id) {
        userDAO.deleteUser(id);
    }
    public List<User> getUsers() { return userDAO.getUsers(); }
    public User getUser(int id) {
        return userDAO.getUser(id);
    }

}
