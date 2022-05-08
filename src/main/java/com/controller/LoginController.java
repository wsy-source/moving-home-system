package com.controller;

import com.bean.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController extends BaseController {

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String toLogin() {
        return "login";
    }

    @GetMapping("/logout")
    public String logout(){
        request.getSession().removeAttribute("user");
        request.getSession().removeAttribute("admin");
        return "index";
    }
    @PostMapping("/doLogin")
    public String doLogin(User tempUser, @RequestParam(value = "admin",required = false) String key) {
        User user = userService.login(tempUser);

        if (user != null) {
            request.removeAttribute("errorMsg");
           if (user.getStatus().getNum() == 1 && "on".equals(key)){
               HttpSession session = request.getSession();
               session.setAttribute("user", user);
               session.setAttribute("admin", user);
           }else {
               HttpSession session = request.getSession();
               session.removeAttribute("admin");
               session.setAttribute("user", user);
           }
        } else {
            request.setAttribute("errorMsg", "账号或密码错误");
            return "login";
        }
        return "index";
    }



}
