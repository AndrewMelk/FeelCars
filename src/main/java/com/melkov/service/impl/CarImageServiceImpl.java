package com.melkov.service.impl;

import com.melkov.dao.CarImageDao;
import com.melkov.service.CarImageService;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.util.List;

/**
 * Created by andrew on 18.10.16.
 */
public class CarImageServiceImpl implements CarImageService {

    @Autowired
    CarImageDao carImageDao;

    public void addImages(long carUUID, List<String> carImages,List<String> thumbCarImages) throws IOException {
        carImageDao.addImages(carUUID,carImages,thumbCarImages);
    }

    public List<String> getImageList(long uuid) {

        return carImageDao.getImageList(uuid);
    }

    @Override
    public List<String> getThumbImageList(long carUUID) {
        return carImageDao.getThumbImageList(carUUID);
    }
}
