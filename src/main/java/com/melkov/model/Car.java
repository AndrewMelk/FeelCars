package com.melkov.model;

/**
 * Created by andrew on 04.08.16.
 */

public class Car {


    private long id;
    private long uuid;

    // New property
    private String vehicleType;
    private String bodyType;

    private String mark;
    private String model;

    private double engineValue;
    private double consumption;
    // New property
    private int carYear;
    private int carPrice;
    private String transmissionType;
    private String typeOfDrive;
    private int mileage;
    private String city;
    private String colour;
    private String description;

    private String title;
    private String modeification;
    private String vin;

    private String username;

    private String generalImage;

    public String getGeneralImage() {
        return generalImage;
    }

    public void setGeneralImage(String generalImage) {
        this.generalImage = generalImage;
    }

    public long getUuid() {
        return uuid;
    }

    public void setUuid(long uuid) {
        this.uuid = uuid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getModeification() {
        return modeification;
    }

    public void setModeification(String modeification) {
        this.modeification = modeification;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public Car(long id, String vehicleType, String bodyType, String mark, String model, double engineValue, double consumption, int carYear, int carPrice, String transmissionType, String typeOfDrive, int mileage, String city, String colour, String description, String title, String modeification, String vin) {

        this.id = id;
        this.vehicleType = vehicleType;
        this.bodyType = bodyType;
        this.mark = mark;
        this.model = model;
        this.engineValue = engineValue;
        this.consumption = consumption;
        this.carYear = carYear;
        this.carPrice = carPrice;
        this.transmissionType = transmissionType;
        this.typeOfDrive = typeOfDrive;
        this.mileage = mileage;
        this.city = city;
        this.colour = colour;
        this.description = description;
        this.title = title;
        this.modeification = modeification;
        this.vin = vin;
    }

    public Car() {
    }

    public Car(long id,
               String vehicleType,
               String bodyType,
               String mark,
               String model,
               double engineValue,
               double consumption,
               int carYear,
               int carPrice,
               String transmissionType,
               String typeOfDrive,
               int mileage,
               String city,
               String colour,
               String description) {
        this.id = id;
        this.vehicleType = vehicleType;
        this.bodyType = bodyType;
        this.mark = mark;
        this.model = model;
        this.engineValue = engineValue;
        this.consumption = consumption;
        this.carYear = carYear;
        this.carPrice = carPrice;
        this.transmissionType = transmissionType;
        this.typeOfDrive = typeOfDrive;
        this.mileage = mileage;
        this.city = city;
        this.colour = colour;
        this.description = description;
    }

    public Car(long id, String mark, String model, double engineValue, double consumption) {
        this.id = id;
        this.mark = mark;
        this.model = model;
        this.engineValue = engineValue;
        this.consumption = consumption;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public double getEngineValue() {
        return engineValue;
    }

    public void setEngineValue(double engineValue) {
        this.engineValue = engineValue;
    }

    public double getConsumption() {
        return consumption;
    }

    public void setConsumption(double consumption) {
        this.consumption = consumption;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public String getBodyType() {
        return bodyType;
    }

    public void setBodyType(String bodyType) {
        this.bodyType = bodyType;
    }

    public int getCarYear() {
        return carYear;
    }

    public void setCarYear(int carYear) {
        this.carYear = carYear;
    }

    public int getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(int carPrice) {
        this.carPrice = carPrice;
    }

    public String getTransmissionType() {
        return transmissionType;
    }

    public void setTransmissionType(String transmissionType) {
        this.transmissionType = transmissionType;
    }

    public String getTypeOfDrive() {
        return typeOfDrive;
    }

    public void setTypeOfDrive(String typeOfDrive) {
        this.typeOfDrive = typeOfDrive;
    }

    public int getMileage() {
        return mileage;
    }

    public void setMileage(int mileage) {
        this.mileage = mileage;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Car)) return false;

        Car car = (Car) o;

        if (getId() != car.getId()) return false;
        if (getUuid() != car.getUuid()) return false;
        if (Double.compare(car.getEngineValue(), getEngineValue()) != 0) return false;
        if (Double.compare(car.getConsumption(), getConsumption()) != 0) return false;
        if (getCarYear() != car.getCarYear()) return false;
        if (getCarPrice() != car.getCarPrice()) return false;
        if (getMileage() != car.getMileage()) return false;
        if (getVehicleType() != null ? !getVehicleType().equals(car.getVehicleType()) : car.getVehicleType() != null)
            return false;
        if (getBodyType() != null ? !getBodyType().equals(car.getBodyType()) : car.getBodyType() != null) return false;
        if (getMark() != null ? !getMark().equals(car.getMark()) : car.getMark() != null) return false;
        if (getModel() != null ? !getModel().equals(car.getModel()) : car.getModel() != null) return false;
        if (getTransmissionType() != null ? !getTransmissionType().equals(car.getTransmissionType()) : car.getTransmissionType() != null)
            return false;
        if (getTypeOfDrive() != null ? !getTypeOfDrive().equals(car.getTypeOfDrive()) : car.getTypeOfDrive() != null)
            return false;
        if (getCity() != null ? !getCity().equals(car.getCity()) : car.getCity() != null) return false;
        if (getColour() != null ? !getColour().equals(car.getColour()) : car.getColour() != null) return false;
        if (getDescription() != null ? !getDescription().equals(car.getDescription()) : car.getDescription() != null)
            return false;
        if (getTitle() != null ? !getTitle().equals(car.getTitle()) : car.getTitle() != null) return false;
        if (getModeification() != null ? !getModeification().equals(car.getModeification()) : car.getModeification() != null)
            return false;
        if (getVin() != null ? !getVin().equals(car.getVin()) : car.getVin() != null) return false;
        if (getUsername() != null ? !getUsername().equals(car.getUsername()) : car.getUsername() != null) return false;
        return getGeneralImage() != null ? getGeneralImage().equals(car.getGeneralImage()) : car.getGeneralImage() == null;

    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = (int) (getId() ^ (getId() >>> 32));
        result = 31 * result + (int) (getUuid() ^ (getUuid() >>> 32));
        result = 31 * result + (getVehicleType() != null ? getVehicleType().hashCode() : 0);
        result = 31 * result + (getBodyType() != null ? getBodyType().hashCode() : 0);
        result = 31 * result + (getMark() != null ? getMark().hashCode() : 0);
        result = 31 * result + (getModel() != null ? getModel().hashCode() : 0);
        temp = Double.doubleToLongBits(getEngineValue());
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(getConsumption());
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + getCarYear();
        result = 31 * result + getCarPrice();
        result = 31 * result + (getTransmissionType() != null ? getTransmissionType().hashCode() : 0);
        result = 31 * result + (getTypeOfDrive() != null ? getTypeOfDrive().hashCode() : 0);
        result = 31 * result + getMileage();
        result = 31 * result + (getCity() != null ? getCity().hashCode() : 0);
        result = 31 * result + (getColour() != null ? getColour().hashCode() : 0);
        result = 31 * result + (getDescription() != null ? getDescription().hashCode() : 0);
        result = 31 * result + (getTitle() != null ? getTitle().hashCode() : 0);
        result = 31 * result + (getModeification() != null ? getModeification().hashCode() : 0);
        result = 31 * result + (getVin() != null ? getVin().hashCode() : 0);
        result = 31 * result + (getUsername() != null ? getUsername().hashCode() : 0);
        result = 31 * result + (getGeneralImage() != null ? getGeneralImage().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", uuid=" + uuid +
                ", vehicleType='" + vehicleType + '\'' +
                ", bodyType='" + bodyType + '\'' +
                ", mark='" + mark + '\'' +
                ", model='" + model + '\'' +
                ", engineValue=" + engineValue +
                ", consumption=" + consumption +
                ", carYear=" + carYear +
                ", carPrice=" + carPrice +
                ", transmissionType='" + transmissionType + '\'' +
                ", typeOfDrive='" + typeOfDrive + '\'' +
                ", mileage=" + mileage +
                ", city='" + city + '\'' +
                ", colour='" + colour + '\'' +
                ", description='" + description + '\'' +
                ", title='" + title + '\'' +
                ", modeification='" + modeification + '\'' +
                ", vin='" + vin + '\'' +
                ", username='" + username + '\'' +
                '}';
    }
}
