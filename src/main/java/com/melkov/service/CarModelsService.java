package com.melkov.service;

import com.melkov.model.CarModels;

import java.util.List;

/**
 * Created by andrew on 05.09.16.
 */
public interface CarModelsService {

    public List<CarModels> getModelsByMark(int mark_id);


}
