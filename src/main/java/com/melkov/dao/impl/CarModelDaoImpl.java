package com.melkov.dao.impl;

import com.melkov.dao.CarModelDao;
import com.melkov.jdbc.mappers.CarModelsRowMapper;
import com.melkov.model.CarModels;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by andrew on 05.09.16.
 */
public class CarModelDaoImpl implements CarModelDao {

    @Autowired
    DataSource dataSourceCar;

    public List<CarModels> getModelsByMark(int mark_id) {
        List<CarModels> carModelsList = new ArrayList<CarModels>();
        String sql1 = "SELECT model.id, model.code, model.title FROM model WHERE make_id =" + mark_id;
//        String sql = "select * from models where mark_name="+ "'" + mark + "'";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSourceCar);
        carModelsList = jdbcTemplate.query(sql1, new CarModelsRowMapper());

        return carModelsList;
    }
}
