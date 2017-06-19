package com.melkov.dao.impl;

import com.melkov.dao.CarImageDao;
import com.melkov.jdbc.mappers.CarImageRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

/**
 * Created by andrew on 18.10.16.
 */
public class CarImageDaoImpl implements CarImageDao {
    Logger logger = Logger.getLogger(this.getClass().toString());

    @Autowired
    DataSource dataSourceCars;

    public void addImages(long carUUID, List<String> carImages, List<String> thumbCarImages) throws IOException {

        Iterator<String> iterator = carImages.iterator();
        Iterator<String> thumbIterator = thumbCarImages.iterator();
        for (int i=0;i<carImages.size();i++){
            if(iterator.hasNext()) {
                String query = "INSERT INTO image_paths (car_uuid, image_path, thumb_image_path) VALUES (?,?,?)";
                JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSourceCars);
                jdbcTemplate.update(query, new Object[]{carUUID, iterator.next(), thumbIterator.next()});
            }
            }

//        for (String path : carImages){
//            String query = "INSERT INTO image_paths (car_uuid, image_path) VALUES (?,?)";
//            JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSourceCars);
//            jdbcTemplate.update(query,new Object[]{carUUID, path});
//        }

    }

    public List<String> getImageList(long carUUID) {
        List<String> images = new ArrayList<>();
        String query = "SELECT image_path from image_paths WHERE car_uuid=" + carUUID;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSourceCars);

        images = jdbcTemplate.query(query, new CarImageRowMapper());


        return images;
    }

    @Override
    public List<String> getThumbImageList(long carUUID) {
        List<String> images = new ArrayList<>();
        String query = "SELECT thumb_image_path from image_paths WHERE car_uuid=" + carUUID;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSourceCars);

        images = jdbcTemplate.query(query, new CarImageRowMapper());


        return images;
    }
}
