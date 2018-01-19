package cz.uhk.inzert.service;

import cz.uhk.inzert.dao.UserDAO;
import cz.uhk.inzert.model.User;
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
        this.userDAO.addUser(user);
    }
    public void updateUser(User user) {
        this.userDAO.updateUser(user);
    }
    public void deleteUser(int id) {
        this.userDAO.deleteUser(id);
    }
    public List<User> getUsers() {
        return this.userDAO.getUsers();
    }
    public User getUser(int id) {
        return this.userDAO.getUser(id);
    }



}
