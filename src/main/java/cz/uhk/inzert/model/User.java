package cz.uhk.inzert.model;

import javax.persistence.*;


//Entity bean with JPA annotations
@Entity
@Table(name= "user")
public class User {
    @Id
    @GeneratedValue
    //@Column(name = "id")
    private int id;
    //@Column(name = "firstName")
    private String firstName;
    //@Column(name = "lastName")
    private String lastName;
    //@Column(name = "login")
    private String login;
    //@Column(name = "password")
    private String password;
    //@Column(name = "phoneNumber")
    private String phoneNumber;
    //@Column(name = "email")
    private String email;
    //@Column(name = "rating")
    private int rating;
    //@Column(name = "privileges")
    private int privileges;


    public User() {}

    public User(String firstName, String lastName, String login,String  password, String phoneNumber, String email,  int rating, int privileges) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.login = login;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.rating = rating;
        this.privileges = privileges;
    }

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getPrivileges() {
        return privileges;
    }

    public void setPrivileges(int privileges) {
        this.privileges = privileges;
    }
}
