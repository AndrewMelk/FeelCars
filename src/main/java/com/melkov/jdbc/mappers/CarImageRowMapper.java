package com.melkov.jdbc.mappers;

import com.melkov.jdbc.extractors.CarImageExtractor;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Andrew on 19.06.2017.
 */
public class CarImageRowMapper implements RowMapper<String> {
    @Override
    public String mapRow(ResultSet resultSet, int i) throws SQLException {
        CarImageExtractor extractor = new CarImageExtractor();

        return extractor.extractData(resultSet);
    }
}
