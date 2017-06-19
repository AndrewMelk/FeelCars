package com.melkov.dao.impl;

import com.melkov.dao.RegionDao;
import com.melkov.jdbc.mappers.RegionRowMapper;
import com.melkov.model.Region;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by andrew on 28.09.16.
 */
public class RegionDaoImpl implements RegionDao {
    @Autowired
    DataSource dataSourceCars;

    public List<Region> getListRegions() {
        List<Region> regions = new ArrayList<Region>();
        String sql = "SELECT * FROM region";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSourceCars);
        regions = jdbcTemplate.query(sql, new RegionRowMapper());

        return regions;
    }
}
