package com.example.dead.controller;

import com.example.dead.been.Response;
import com.example.dead.service.FriendService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@Slf4j
@RestController
public class AttendController {
    @Autowired
    private FriendService friendService;

    @PostMapping(value = "/apply")
    public Response apply(HttpSession httpSession, String friend){
        String user = (String) httpSession.getAttribute("username");
        boolean flag = friendService.apply(user,friend);
        if(flag){
            return new Response("apply success","success");
        }else{
            return new Response("apply failed","failed");
        }
    }

    @PostMapping(value = "/agree")
    public Response agree(HttpSession httpSession, String friend){
        String user = (String) httpSession.getAttribute("username");
        boolean flag = friendService.agreed(user,friend);
        if(flag){
            boolean flag1 = friendService.friends(user,friend);
            if(flag1){
                return new Response("agree success","success");
            }else{
                return new Response("agree failed","failed");
            }
        }else{
            return new Response("you are already friends","failed");
        }
    }

    @PostMapping(value = "/disagree")
    public Response disagree(HttpSession httpSession, String friend){
        String user = (String) httpSession.getAttribute("username");
        boolean flag = friendService.disagree(user,friend);
        if(flag){
            return new Response("disagree success","success");
        }else {
            return new Response("disagree failed","failed");
        }
    }
}