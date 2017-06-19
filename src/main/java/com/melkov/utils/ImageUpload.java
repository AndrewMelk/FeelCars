package com.melkov.utils;

import com.melkov.service.CarImageService;
import com.mortennobel.imagescaling.MultiStepRescaleOp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by andrew on 23.11.16.
 */
public class ImageUpload implements Runnable{

    @Autowired
    CarImageService carImageService;

    private HttpServletRequest request;
    private MultipartFile[] files;
    private long tmpUUID;

    public ImageUpload(HttpServletRequest request, MultipartFile[] files, long tmpUUID) {
        this.request = request;
        this.files = files;
        this.tmpUUID = tmpUUID;
    }

    Logger logger = Logger.getLogger(this.getClass().toString());

    public boolean upload(HttpServletRequest request, MultipartFile[] files, long tmpUUID){
        boolean isUploaded = false;

        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];

            try {
                byte[] bytes = file.getBytes();

                // Creating the directory to store file
//                String rootPath = System.getProperty("catalina.home");
                String rootPath = request.getSession().getServletContext().getRealPath("/resources/images");
                logger.log(Level.SEVERE,"Root PATH ---" + rootPath);
                File dir = new File(rootPath + File.separator + "tmpFiles" + File.separator + tmpUUID);
                File thumbDir = new File(rootPath + File.separator+"tmpFiles" + File.separator + tmpUUID + File.separator + "thumb");
                logger.log(Level.SEVERE,"dir ---" + dir);

                if (!dir.exists())
                    dir.mkdirs();
                if (!thumbDir.exists())
                    thumbDir.mkdirs();

                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();

                //Create the thumb image on server
                // convert byte array back to BufferedImage
                InputStream in = new ByteArrayInputStream(bytes);
                BufferedImage bImageFromConvert = ImageIO.read(in);

                BufferedImage scaledImage = new MultiStepRescaleOp(102,60, RenderingHints.VALUE_INTERPOLATION_BILINEAR).filter(bImageFromConvert,null);
                File thumbServerFile = new File(thumbDir.getAbsolutePath()
                        + File.separator + "thumb_" + file.getOriginalFilename());
//                BufferedOutputStream thumbStream = new BufferedOutputStream(
//                        new FileOutputStream(thumbServerFile));
                ImageIO.write(scaledImage,"png",thumbServerFile);

//                ImageResize.resize(file,serverFile.getPath(),0.2);

                logger.info("Server File Location="
                        + serverFile.getAbsolutePath());
                if (!serverFile.equals(null)){
                    isUploaded = true;
                }else {
                    isUploaded = false;
                }
//                ImageResize.resize(file,dir.getPath(),20);

            } catch (Exception e) {
                logger.log(Level.SEVERE, "------insert method Exception-----" + e.toString());
//				return "You failed to upload " + name + " => " + e.getMessage();
            }
        }
        return isUploaded;
    }


    @Override
    public void run() {
        upload(request,files,tmpUUID);
    }
}
