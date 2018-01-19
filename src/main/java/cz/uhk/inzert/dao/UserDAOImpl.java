package cz.uhk.inzert.dao;

import cz.uhk.inzert.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


import java.util.List;
import java.util.logging.Logger;

public class UserDAOImpl implements UserDAO {

    //private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }

 //todo radsi porovnat

    @Override
    public void addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        //logger.info("user saved successfully, user Details="+user);
    }

    @Override
    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
        //logger.info("user updated successfully, user Details="+user);
    }


    @Override
    @SuppressWarnings("unchecked")
    public List<User> listUsers() {
        //Session session = this.sessionFactory.getCurrentSession();
        //List<User> usersList = session.createQuery("from User").list();
        //for(User u : usersList){
            //logger.info("user List::"+u);
        //}
        //return usersList;
        return null;
    }

    @Override
    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        //logger.info("user loaded successfully, user details="+user);
        return user;
    }

    @Override
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        if(null != user){
            session.delete(user);
        }
        //logger.info("user deleted successfully, user details="+user);
    }

}
