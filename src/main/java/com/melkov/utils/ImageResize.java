package com.melkov.utils;

import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by andrew on 04.10.16.
 */
public class ImageResize {
    static BufferedImage inputImage;
    static BufferedImage outputImage;
    static Logger logger = Logger.getLogger("ImageResize class");

    public static void resize(MultipartFile inputImagePath,
                              String outputImagePath, int scaledWidth, int scaledHeight)
            throws IOException {

        logger.log(Level.SEVERE,"outputImagePath  -------- " + outputImagePath);
        // reads input image
        File inputFile = convert(inputImagePath);
        logger.log(Level.SEVERE,"inputFile  -------- " + inputFile);

        inputImage = ImageIO.read(inputFile);

        // creates output image
        outputImage = new BufferedImage(scaledWidth,
                scaledHeight, inputImage.getType());

        // scales the input image to the output image
        Graphics2D g2d = outputImage.createGraphics();
        g2d.drawImage(inputImage, 0, 0, scaledWidth, scaledHeight, null);
        g2d.dispose();

        // extracts extension of output file
        String formatName = outputImagePath.substring(outputImagePath
                .lastIndexOf(".") + 1);

        // writes to output file
        ImageIO.write(outputImage, formatName, new File(outputImagePath));
    }

    /**
     * Resizes an image by a percentage of original size (proportional).
     * @param inputImagePath Path of the original image
     * @param outputImagePath Path to save the resized image
     * @param percent a double number specifies percentage of the output image
     * over the input image.
     * @throws IOException
     */

    public static void resize(MultipartFile inputImagePath,
                              String outputImagePath, double percent) throws IOException {
        File inputFile = convert(inputImagePath);
        inputImage = ImageIO.read(inputFile);
        double coeficient = (double) inputImage.getWidth()/inputImage.getHeight();
        logger.log(Level.SEVERE, "inputImage.getWidth() = " + inputImage.getWidth());
        logger.log(Level.SEVERE, "inputImage.getHeight() = " + inputImage.getHeight());
        logger.log(Level.SEVERE, "coeficient = " + coeficient);

        int scaledHeight = 185;
        double scaledWidthTemp = scaledHeight*coeficient;
        int scaledWidth = (int) (scaledWidthTemp);
//        int scaledWidth = (int) (inputImage.getWidth() * percent);
//        int scaledHeight = (int) (inputImage.getHeight() * percent);
        resize(inputImagePath, outputImagePath, scaledWidth, scaledHeight);
    }

    public static File convert(MultipartFile file) throws IOException {
        File convFile = new File(file.getOriginalFilename());
        convFile.createNewFile();
        FileOutputStream fos = new FileOutputStream(convFile);
        fos.write(file.getBytes());
        fos.close();
        return convFile;
    }


}
