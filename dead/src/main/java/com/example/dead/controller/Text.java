package com.example.dead.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Text {
    @RequestMapping("/first")
    public  String first(){

        return "first";
    }
}
