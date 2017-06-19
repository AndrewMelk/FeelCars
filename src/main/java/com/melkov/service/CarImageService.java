package com.melkov.service;

import java.io.IOException;
import java.util.List;

/**
 * Created by andrew on 18.10.16.
 */
public interface CarImageService {

    public void addImages(long carUUID, List<String> carImages, List<String> thumbCarImages) throws IOException;
    public List<String> getImageList(long uuid);
    public List<String> getThumbImageList(long carUUID);

}
