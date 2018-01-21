package cz.uhk.inzert.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "category")
public class Category {
    @Id
    @GeneratedValue
    private int id;
    private String title;

    public Category() { }

    public Category(String title) { this.title = title; }

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public String getTitle() { return title; }

    public void setTitle(String title) { this.title = title; }
}
