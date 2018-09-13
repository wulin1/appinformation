package com.example.demo.service;

import com.example.demo.dao.UsersDao;
import com.example.demo.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsersService {
    @Autowired
    private UsersDao usersDao;

    public Users dologin(Users users) {
        users=this.usersDao.login(users.getUsername(), users.getPassword());
        return users;
    }
}
