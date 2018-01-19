package cz.uhk.inzert.dao;

import cz.uhk.inzert.model.User;

import java.util.List;

public interface UserDAO {
    public void addUser(User user);
    public void updateUser(User user);
    public List<User> listUsers();
    public User getUserById(int id);
    public void removeUser(int id);
}
