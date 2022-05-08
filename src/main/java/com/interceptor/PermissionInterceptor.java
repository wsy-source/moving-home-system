package com.interceptor;

import com.bean.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* @ClassName PermissionInterceptor
* 功能描述 : 用户权限拦截器，不登陆不能提交表单。
**/
public class PermissionInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        User user = (User)request.getSession().getAttribute("user");
        User admin = (User)request.getSession().getAttribute("admin");
        if (user != null || admin !=null){
            return true;
        }else {
            response.sendRedirect(request.getContextPath()+"/login");
            return true;
        }
    }
}
