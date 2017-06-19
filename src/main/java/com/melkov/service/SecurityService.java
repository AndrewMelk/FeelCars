package com.melkov.service;


public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
