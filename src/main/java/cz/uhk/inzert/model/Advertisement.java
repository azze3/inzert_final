package cz.uhk.inzert.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "advertisement")
public class Advertisement {
    @Id
    @GeneratedValue
    private int id;
    private String title;
    private String description;
    @ManyToOne
    @JoinColumn(name = "user.Id")
    private User user;
    @ManyToOne
    @JoinColumn(name = "category.Id")
    private Category category;
    private int reported;
    private Date created;
    private float price;
    private String location;
    private boolean type;

    public Advertisement() {

    }

    public Advertisement(String title, String description, User user, Category category, int reported, Date created, float price, String location, boolean type) {
        this.title = title;
        this.description = description;
        this.user = user;
        this.category = category;
        this.reported = reported;
        this.created = created;
        this.price = price;
        this.location = location;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getReported() {
        return reported;
    }

    public void setReported(int reported) {
        this.reported = reported;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public boolean isType() {
        return type;
    }

    public void setType(boolean type) {
        this.type = type;
    }
}