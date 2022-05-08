package com.service;

import com.bean.User;
import com.bean.UserStatus;


public interface UserService {

    User login(User user);

    Integer registerUser(User user);

    String queryUserByUsername( String username);

    User queryUserByStatus(UserStatus adminStatus);
}
