package com.melkov.dao;

import com.melkov.model.City;

import java.util.List;

/**
 * Created by andrew on 28.09.16.
 */
public interface CityDao {

public List<City> getCityList(int regionId);

}
