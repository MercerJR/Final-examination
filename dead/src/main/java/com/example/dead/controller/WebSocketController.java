package com.example.dead.controller;

import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
public class WebSocketController {
    @GetMapping("/")
    public ModelAndView login() {
        return new ModelAndView("/login");
    }

    @GetMapping("/index")
    public ModelAndView index(String username, HttpServletRequest request) throws UnknownHostException {
        if (StringUtils.isEmpty(username)) {
            username = "游客";
        }
        ModelAndView mav = new ModelAndView("/hall");
        mav.addObject("username", username);
        mav.addObject("webSocketUrl", "ws://" + InetAddress.getLocalHost().getHostAddress() + ":" + request.getServerPort() + request.getContextPath() + "/hall");
        return mav;
    }
}