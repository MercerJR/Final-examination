package com.example.dead.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

@Mapper
@Component
public interface AttendDao {
    @Insert("Insert into addfriend (user, friend, user_state,friend_state) value (#{user}, #{friend}, 1,0)")
    boolean apply(@Param("user") String user, @Param("friend") String friend);

    @Insert("Insert into friends (user, friend) value (#{user}, #{friend})")
    boolean friends(@Param("user") String User, @Param("friend") String friend);

    @Update("Update addfriend set friend_state = 1 where user = #{user} and friend = #{friend}")
    boolean agreed(@Param("friend") String user, @Param("user") String friend);

    @Update("Update addfriend set friend_state = -1 where user = #{user} and friend = #{friend}")
    boolean disagree(@Param("friend") String user, @Param("user") String friend);
}