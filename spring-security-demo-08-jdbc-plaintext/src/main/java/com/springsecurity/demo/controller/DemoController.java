package com.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

    @GetMapping("/")
    public String showHome(){
        System.out.println("In demo controller");
        return "home";
    }

    @GetMapping("/leaders")
    public String showLeaders(){
        System.out.println("In demo controller");
        return "leaders";
    }

    @GetMapping("/systems")
    public String showSystems(){
        System.out.println("In demo controller");
        return "systems";
    }
}
