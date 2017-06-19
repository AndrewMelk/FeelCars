package com.melkov.controller;

import com.melkov.model.*;
import com.melkov.service.*;
import com.melkov.utils.ImageUpload;
import com.melkov.utils.UUIDGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

@Controller
@SessionAttributes({"mark","model"})
@RequestMapping(value = "/")
public class MainController {
	Logger logger = Logger.getLogger(getClass().toString());


	@Autowired
	CarService carService;
	@Autowired
	CarMarksService carMarksService;
	@Autowired
	CarModelsService carModelsService;
	@Autowired
	CityService cityService;
	@Autowired
	RegionService regionService;
    @Autowired
    CarImageService carImageService;


	@RequestMapping("/")
	public String redirect(){
		return "redirect:/getList";
	}


	@RequestMapping(value = "/getList", method = RequestMethod.GET)
	public ModelAndView getData(@ModelAttribute SearchBean searchBean) {


		List<Car> carList = carService.getAllCar();
		List<CarMarks> carMarksList = carMarksService.getAllMarks();
		List<Integer> carYears = new ArrayList<Integer>();
		List<String> bodyType = new ArrayList<String>();
		List<String> transmissionTypes = new ArrayList<String>();

		bodyType.add("Хетчбек");
		bodyType.add("Седан");
		bodyType.add("Универсал");
		bodyType.add("Купе");

		transmissionTypes.add("Механическая");
		transmissionTypes.add("Роботизированная");
		transmissionTypes.add("Автоматическая");
		transmissionTypes.add("Вариатор");

		ModelAndView model = new ModelAndView("car-list-leftsidebar");

		Integer year = Calendar.getInstance().get(Calendar.YEAR);
		for (int i = year; i>=1950; i--){
			carYears.add(i);
		}
		model.addObject("transmissionTypes", transmissionTypes);
		model.addObject("bodyType", bodyType);
		model.addObject("carYears",carYears);
		model.addObject("carList", carList);
		model.addObject("carMarksList", carMarksList);
		model.addObject("newCar", new Car());

		return model;

	}

	@RequestMapping("/add_car")
	public ModelAndView addCar(@ModelAttribute Car car,
							   HttpSession session){
		ModelAndView model = new ModelAndView("submit-car");
        List<Car> carList = carService.getAllCar();
        long tmpUUID = 0;
        long uuid;
		Car sessionCar = new Car();

        if(carList.isEmpty()){
        tmpUUID = UUIDGenerator.createRandomUUID();
            model.addObject("uuid", tmpUUID);
			sessionCar.setUuid(tmpUUID);
			session.setAttribute("car", sessionCar);
			session.setAttribute("uuid", tmpUUID);
        logger.log(Level.SEVERE, " if tmpUUid" + tmpUUID);
    }else {
        for (Car car1 : carList) {
            tmpUUID = UUIDGenerator.createRandomUUID();
            uuid = car1.getUuid();
            if (uuid != tmpUUID) {
                logger.log(Level.SEVERE, " else UUid" + tmpUUID);

                model.addObject("uuid", tmpUUID);
				sessionCar.setUuid(uuid);
				session.setAttribute("car", sessionCar);
				session.setAttribute("uuid", tmpUUID);

			}
        }
    }

		List<String> vehicleType = new ArrayList<String>();
		List<String> bodyType = new ArrayList<String>();
		List<String> transmissionTypes = new ArrayList<String>();
		List<String> typeOfDrive = new ArrayList<String>();
		List<Integer> carYears = new ArrayList<Integer>();
		List<CarMarks> carMarksList = carMarksService.getAllMarks();
		List<Region> regionList = regionService.getListRegions();


		logger.log(Level.SEVERE,"Region list -------" + regionList.toString());
		Integer year = Calendar.getInstance().get(Calendar.YEAR);
		for (int i = year; i>=1950; i--){
			carYears.add(i);
		}


		vehicleType.add("Мототехника");
		vehicleType.add("Легковой");
		vehicleType.add("Грузовой");
		vehicleType.add("Автобусы");

		bodyType.add("Хетчбек");
		bodyType.add("Седан");
		bodyType.add("Универсал");
		bodyType.add("Купе");

		transmissionTypes.add("Механическая");
		transmissionTypes.add("Роботизированная");
		transmissionTypes.add("Автоматическая");
		transmissionTypes.add("Вариатор");

		typeOfDrive.add("Передний");
		typeOfDrive.add("Задний");
		typeOfDrive.add("Полный");

		model.addObject("vehicleType", vehicleType);
		model.addObject("bodyType", bodyType);
		model.addObject("carYears", carYears);
		model.addObject("transmissionTypes", transmissionTypes);
		model.addObject("carMarksList", carMarksList);
		model.addObject("typeOfDrive", typeOfDrive);
		model.addObject("regionList", regionList);
		return model;
	}

	@RequestMapping("/uploadImage")
	public void uploadImage(@RequestParam("file") MultipartFile[] files,
							HttpSession session,
							HttpServletRequest request){
		long uuid = (Long) session.getAttribute("uuid");
        session.setAttribute("generalImage", files[0].getOriginalFilename());
        List<String> paths = new ArrayList<>();
        List<String> thumbPaths = new ArrayList<>();
        for (int i=0; i<files.length; i++){
            paths.add("/resources/images/tmpFiles" + "/" + uuid + "/" + files[i].getOriginalFilename());
            thumbPaths.add("/resources/images/tmpFiles" + "/" + uuid + "/"+ "thumb" + "/"+ "thumb_" + files[i].getOriginalFilename());

        }
        try {
            ImageUpload imageUpload = new ImageUpload(request,files,uuid);
            imageUpload.run();
            carImageService.addImages(uuid,paths,thumbPaths);

        }catch (Exception e){
            e.printStackTrace();
        }


	}


	@RequestMapping("/insert")
	public String inserData(@ModelAttribute Car car,
							@RequestParam("file") MultipartFile[] files,
                            @RequestParam("uuid") String uuid,
							HttpServletRequest request,
                            HttpSession session,
							ModelAndView mav) throws IOException {

		logger.log(Level.SEVERE, car.toString());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); //get logged in username
		logger.log(Level.SEVERE, "User name ----- " + name);

		if (car != null) {
			car.setUsername(name);
//			long tmpUUID = (Long) (request.getAttribute("uuid"));
			long tmpUUID = Long.parseLong(uuid);

			logger.log(Level.SEVERE, "tmpUUID: ---- " + tmpUUID);

			car.setGeneralImage("/resources/images/tmpFiles" + "/" + tmpUUID + "/" + session.getAttribute("generalImage"));

				carService.addCar(car);
			mav.addObject("carId", car.getId());
		}else {
			return "redirect:/getList";
		}
		return "redirect:/getList";
	}




	@RequestMapping("/delete")
	public String deleteCar(@RequestParam String id, HttpServletRequest request){
		System.out.println("id= " + id);
		carService.removeCar(id);
		String rootPath = request.getSession().getServletContext().getRealPath("/resources/img");
		File file = new File(rootPath + File.separator + "tmpFiles1" + File.separator + "11.jpg");
		if (file.delete()){
			logger.log(Level.SEVERE, "deleted file: " + file);
		}else {
			logger.log(Level.SEVERE, "file don't deleted " + file);

		}
		return "redirect:/getList";
	}

	@RequestMapping("/edit")
	public ModelAndView editCar(@RequestParam String id,
								@ModelAttribute Car car){

		car = carService.getCarById(id);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("car",car);

		return new ModelAndView("edit","map",map);
	}

	@RequestMapping("/update")
	public String updateCar(@ModelAttribute Car car){
		carService.updateData(car);
		return "redirect:/getList";
	}

	@RequestMapping("/show_details")
	public ModelAndView showDetails(@RequestParam String id,
									@ModelAttribute Car car){
		ModelAndView mav = new ModelAndView("car-detail");
		car = carService.getCarById(id);
		List<String> imageList = carImageService.getImageList(car.getUuid());
		List<String> thumbImageList = carImageService.getThumbImageList(car.getUuid());
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("car", car);
		mav.addObject("map", map);
		mav.addObject("imageList", imageList);
		mav.addObject("thumbImageList", thumbImageList);
		return mav;
	}

	@RequestMapping("/used")
	public ModelAndView showUsedCarByMark(@RequestParam String mark){
		List<Car> carList = carService.getCarsByMark(mark);
		List<CarMarks> carMarksList = carMarksService.getTopCarMarks();

		ModelAndView model = new ModelAndView("usedList");

		model.addObject("carMarksList", carMarksList);
		model.addObject("carList", carList);

		return model;
	}

	@RequestMapping("/usedByParam")
	public ModelAndView showUsedCarByParam(@RequestParam String vehicleType,
										   @RequestParam String bodyType,
										   @RequestParam String mark,
										   @RequestParam String model,
										   @RequestParam double fromEngineValue,
										   @RequestParam double toEngineValue,
										   @RequestParam double fromConsumption,
										   @RequestParam double toConsumption,
										   @RequestParam int fromCarYear,
										   @RequestParam int toCarYear,
										   @RequestParam int fromCarPrice,
										   @RequestParam int toCarPrice,
										   @RequestParam String transmissionType,
										   @RequestParam String typeOfDrive,
										   @RequestParam int fromMileage,
										   @RequestParam int toMileage,
										   @RequestParam String city,
										   @RequestParam String colour,
										   @RequestParam String description){
		List<Car> carList = carService.getCarsByParam(vehicleType, bodyType, mark, model, fromEngineValue, toEngineValue, fromConsumption, toConsumption,
				fromCarYear, toCarYear, fromCarPrice, toCarPrice, transmissionType, typeOfDrive, fromMileage, toMileage, city, colour, description);
		List<CarMarks> carMarksList = carMarksService.getTopCarMarks();

		ModelAndView mav = new ModelAndView("usedList");

		mav.addObject("carMarksList", carMarksList);
		mav.addObject("carList", carList);

		return mav;
	}
	@RequestMapping("/usedByMarkModel")
	public @ResponseBody List<Car> showUsedCarByParam(@RequestParam String mark,
										   @RequestParam String model){

		List<Car> carList = carService.getCarsByMarkModel(mark, model);
		List<CarMarks> carMarksList = carMarksService.getTopCarMarks();
		ModelAndView mav = new ModelAndView("usedList");
//		request.getSession().setAttribute("mark",mark);
//		request.getSession().setAttribute("model",model);
		mav.addObject("carMarksList", carMarksList);
		mav.addObject("carList", carList);

		return carList;

	}


	@RequestMapping(value = "/usedBySearchBean",
//			produces = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE},
			method = RequestMethod.GET)
	public ModelAndView usedBySearchBean(@ModelAttribute SearchBean searchBean){

		ModelAndView mav = new ModelAndView("index1");
		List<Car> carList = carService.carListByParameters(searchBean);
		mav.addObject("carList" , carList);
		logger.log(Level.SEVERE, carList.toString());
		return mav;
	}

	@RequestMapping("/dropdown")
	public ModelAndView loadMarks(){

		List<CarMarks> carMarksList = carMarksService.getTopCarMarks();
		ModelAndView model = new ModelAndView("dropdown");
		model.addObject("carMarksList", carMarksList);


		return model;
	}

	@RequestMapping(value = "/loadModels", method = RequestMethod.GET)
	public @ResponseBody
	List<CarModels> loadModels(@RequestParam(value = "mark", required = true) int mark){
		List<CarModels> models = carModelsService.getModelsByMark(mark);
		logger.log(Level.SEVERE, "loadModels --------" + models);
		return carModelsService.getModelsByMark(mark);

	}

	@RequestMapping("/loadRegions")
	public @ResponseBody List<Region> loadRegions(String region){
		return regionService.getListRegions();
	}


	@RequestMapping("/loadCity")
	public @ResponseBody List<City> loadCity(@RequestParam(value = "id", required = true) int id){
		return cityService.getCityList(id);
	}


	@RequestMapping("/test")
	public ModelAndView test(){
		List<Car> carList = carService.getAllCar();
		ModelAndView mav = new ModelAndView("index_1");
		mav.addObject("carList",carList);
		return mav;
	}










}




