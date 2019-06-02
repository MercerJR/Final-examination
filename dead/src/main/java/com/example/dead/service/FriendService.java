package com.example.dead.service;

import com.example.dead.dao.AttendDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FriendService {
    @Autowired
    private AttendDao attendDao;

    public boolean apply(String user,String friend){
        return attendDao.apply(user,friend);
    }

    public boolean friends(String user,String friend){
        return attendDao.friends(user,friend);
    }

    public boolean agreed(String user,String friend){
        return attendDao.agreed(user, friend);
    }

    public boolean disagree(String user,String friend){
        return attendDao.disagree(user, friend);
    }
}
