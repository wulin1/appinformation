package com.example.demo.dao;

import com.example.demo.entity.Users;

public interface UsersDao {
    public Users login(String username, String password);
}
