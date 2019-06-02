package com.example.dead.service;

import com.example.dead.been.User;
import com.example.dead.dao.AttendDao;
import com.example.dead.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserDao userDao;

    public boolean regist(User user){
        String username = user.getUsername();
        User user1 = userDao.existuser(username);
        if(user1 == null){
            return userDao.addUser(user);
        }
        return false;
    }

    public boolean login(User user){
        return userDao.selectUser(user) != null;
    }
}
