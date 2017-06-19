package com.melkov.jdbc.extractors;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Andrew on 19.06.2017.
 */
public class CarImageExtractor implements ResultSetExtractor<String> {
    @Override
    public String extractData(ResultSet resultSet) throws SQLException, DataAccessException {

        return resultSet.getString(1);
    }
}
