package com.kuplumosk.spring.mvc_hibernate_aop.service;

import com.kuplumosk.spring.mvc_hibernate_aop.entity.User;
import java.util.List;

public interface UserService {
    List<User> getAllUsers();
    void saveUser(User user);
    User getUser(int id);
    void deleteUser(int id);
}
