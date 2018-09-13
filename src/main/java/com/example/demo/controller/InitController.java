package com.example.demo.controller;

import com.example.demo.entity.Users;
import com.example.demo.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class InitController {
    @Autowired
    private UsersService userservice;

    @RequestMapping("/login")
    public String index() {

        return "/login.html";
    }
    @RequestMapping(value = "login.action")
    public ModelAndView login(Users users, HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        users.setUsername(username);
        users.setPassword(password);
        users = this.userservice.dologin(users);
        if (users != null) {
            session.setAttribute("users", users);
            mav.setViewName("detail");
            return mav;
        } else {
            session.setAttribute("errormsg", "账号或密码错误!请重新输入");
        }
        mav.setViewName("login");
        return mav;
    }
}
