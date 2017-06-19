package com.melkov.service.impl;

import com.melkov.dao.CarModelDao;
import com.melkov.model.CarModels;
import com.melkov.service.CarModelsService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by andrew on 05.09.16.
 */
public class CarModelsServiceImpl implements CarModelsService {

    @Autowired
    CarModelDao carModelDao;

    public List<CarModels> getModelsByMark(int mark_id)
    {
        return carModelDao.getModelsByMark(mark_id);
    }
}
