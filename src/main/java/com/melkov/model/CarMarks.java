package com.melkov.model;

/**
 * Created by andrew on 30.08.16.
 */
public class CarMarks {

    private int id;
    private String code;
    private String title;
    private boolean top;

    public CarMarks(int id, String code, String title, boolean top) {
        this.id = id;
        this.code = code;
        this.title = title;
        this.top = top;
    }

    public CarMarks() {
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

    public boolean isTop() {
        return top;
    }

    public void setTop(boolean top) {
        this.top = top;
    }

    @Override
    public String toString() {
        return "CarMarks{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", title='" + title + '\'' +
                ", top=" + top +
                '}';
    }
}
