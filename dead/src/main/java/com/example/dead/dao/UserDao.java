package com.example.dead.dao;

import com.example.dead.been.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Mapper
@Component
public interface UserDao {
    @Insert("Insert into user set password = #{password},username = #{username}")
    boolean addUser(User user);

    @Select("Select * from user where username = #{username} and password = #{password}")
    User selectUser(User user);

    @Select("Select * from user where username = #{username}")
    User existuser(@Param("username") String username);

}
