package com.melkov.jdbc.extractors;

import com.melkov.model.CarMarks;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by andrew on 30.08.16.
 */
public class CarMarksExtractor implements ResultSetExtractor<CarMarks> {
    public CarMarks extractData(ResultSet resultSet) throws SQLException, DataAccessException {
        CarMarks car = new CarMarks();

        car.setId(resultSet.getInt(1));
        car.setCode(resultSet.getString(2));
        car.setTitle(resultSet.getString(3));




        return car;
    }
}