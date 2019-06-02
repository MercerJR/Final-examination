package com.example.dead.controller;

import com.example.dead.been.Response;
import com.example.dead.been.User;
import com.example.dead.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@Slf4j
public class UserController {
    @Autowired
    private UserService userService;

    //登陆接口
    @PostMapping(value = "/register",produces = "application/json")
    public Response register(User user){
        if(StringUtils.isEmpty(user.getUsername())){
            log.error("fail to register");
            return new Response("username can not be empty","failed");
        }else if(StringUtils.isEmpty(user.getPassword())){
            log.error("fail to register");
            return new Response("password can not be empty","failed");
        }else{
            boolean flag = userService.regist(user);
            if(flag){
                return new Response("register succeed","success");
            }else{
                return new Response("user is already exist","failed");
            }
        }
    }


    //注册接口
    @PostMapping(value = "/login",produces = "application/json")
    public Response login(User user, HttpServletRequest request){
        if(StringUtils.isEmpty(user.getUsername())){
            log.error("fail to login");
            return new Response("username can not be empty","failed");
        }else if(StringUtils.isEmpty(user.getPassword())){
            log.error("fail to login");
            return new Response("password can not be empty","failed");
        }else{
            boolean flag = userService.login(user);
            if(flag){
                request.getSession().setAttribute("username",user.getUsername());
                return new Response("login succeed","success");
            }else{
                return new Response("username or password is wrong","failed");
            }
        }
    }
}
