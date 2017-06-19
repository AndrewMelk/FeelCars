package com.melkov.dao;

import com.melkov.model.CarModels;

import java.util.List;

/**
 * Created by andrew on 05.09.16.
 */
public interface CarModelDao {

    public List<CarModels> getModelsByMark(int mark_id);
}
