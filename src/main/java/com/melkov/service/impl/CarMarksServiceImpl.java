package com.melkov.service.impl;

import com.melkov.dao.MarkListDao;
import com.melkov.model.CarMarks;
import com.melkov.service.CarMarksService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by andrew on 30.08.16.
 */
public class CarMarksServiceImpl implements CarMarksService {

    @Autowired
    MarkListDao markListDao;

    public List<CarMarks> getTopCarMarks() {
        return markListDao.getTopCarMarks();
    }

    public List<CarMarks> getNotTopMarks() {
        return markListDao.getNotTopMarks();
    }

    public List<CarMarks> getAllMarks() {return  markListDao.getAllMarks();}

    public void addMarkAndModel(CarMarks carMarks) {

    }
}
