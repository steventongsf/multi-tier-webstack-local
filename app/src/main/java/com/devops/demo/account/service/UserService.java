package com.devops.demo.account.service;

import java.util.List;

import com.devops.demo.account.model.User;

public interface UserService {
    /** {@inheritDoc}} ! */
    void save(User user);

    /** {@inheritDoc}} ! */
    User findByUsername(String username);

    User findById(long id);

    /* public void updateUser(User user); */
    public List<User> getList();
}
