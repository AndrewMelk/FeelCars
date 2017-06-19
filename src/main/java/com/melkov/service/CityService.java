package com.melkov.service;

import com.melkov.model.City;

import java.util.List;

/**
 * Created by andrew on 28.09.16.
 */
public interface CityService {

    public List<City> getCityList(int regionId);

}
