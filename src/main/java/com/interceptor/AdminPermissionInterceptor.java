package com.interceptor;

import com.bean.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* @ClassName AdminPermissionInterceptor
* 功能描述 : 管理员权限拦截器、
**/
public class AdminPermissionInterceptor implements HandlerInterceptor{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        User admin = (User) request.getSession().getAttribute("admin");
        if (admin != null) {
            return true;
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
            return true;
        }
    }
}

