package com.controller;

import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RegisterController {

    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public String toRegister() {
        return "register";
    }

    @PostMapping("/checkUsername")
    @ResponseBody
    public String toCheckUsername(@RequestParam("username") String username) {
        Assert.notNull("username", "用户名不能为空");
        return userService.queryUserByUsername(username);
    }
}
