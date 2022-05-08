package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class CarController {

    @GetMapping("/carInfo")
    public String toCarIndex(){
        return "carInfo";
    }

}
