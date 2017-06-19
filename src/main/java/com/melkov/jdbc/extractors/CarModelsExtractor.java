package com.melkov.jdbc.extractors;

import com.melkov.model.CarModels;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by andrew on 05.09.16.
 */
public class CarModelsExtractor implements ResultSetExtractor<CarModels> {
    public CarModels extractData(ResultSet resultSet) throws SQLException, DataAccessException {
        CarModels carModels = new CarModels();

        carModels.setId(resultSet.getInt(1));
        carModels.setCode(resultSet.getString(2));
        carModels.setTitle(resultSet.getString(3));

        return carModels;
    }
}
