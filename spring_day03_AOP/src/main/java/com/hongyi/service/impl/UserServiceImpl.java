package com.hongyi.service.impl;

import com.hongyi.dao.UserDao;
import com.hongyi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


public class UserServiceImpl implements UserService {

    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public void findAll() {
//        int i=1/0;
        userDao.selectAll();
    }
    @Override
    public int findUserById() {
        userDao.selectUserById();
        return 0;
    }
    @Override
    public double delUserById(int a) {
        userDao.deleteUserById();
        return 0.0;
    }
    @Override
    public void updateUser() {
        userDao.updateUser();
    }
}
