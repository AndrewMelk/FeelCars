package com.melkov.service;

import com.melkov.model.User;


public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
