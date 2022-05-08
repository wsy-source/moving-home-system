package com.service.impl;

import com.bean.User;
import com.bean.UserStatus;
import com.dao.UserDao;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User login(User user) {
        Assert.notNull(user, "user不能为空");
        return userDao.queryUser(user);

    }

    @Override
    public Integer registerUser(User user) {
        Assert.notNull(user, "user不能为空");
        return userDao.registerUser(user);
    }

    @Override
    public String queryUserByUsername(String username) {
        User user = userDao.queryUserByUsername(username);
        if (user != null) {
            return "用户名不可用";
        } else {
            return "用户名可用";
        }
    }

    @Override
    public User queryUserByStatus(UserStatus adminStatus) {
        return userDao.queryUserByStatus(adminStatus);
    }
}
