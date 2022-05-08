package com.dao;

import com.bean.User;
import com.bean.UserStatus;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserDao {

    Integer registerUser(User user);

    User queryUser(User user);

    User queryUserByUsername(@Param("username") String username);

    User queryUserByStatus(@Param("adminStatus") UserStatus adminStatus);
}
