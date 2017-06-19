package com.melkov.model;

/**
 * Created by andrew on 05.09.16.
 */
public class CarModels {

    private int id;
    private String code;
    private String title;

    public CarModels() {
    }

    public CarModels(int id, String code, String title) {
        this.id = id;
        this.code = code;
        this.title = title;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "CarModels{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", title='" + title + '\'' +
                '}';
    }
}
