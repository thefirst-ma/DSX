package org.keshe.dsx.service.impl;

import org.keshe.dsx.User;
import org.keshe.dsx.service.BaseServiceImpl;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IUserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceimpl extends BaseServiceImpl<User> implements IUserService {


    @Override
    public User checkLogin(String username, String password) {
        User user = usermapper.findByUUid(username);
        if(user != null && user.getPassword().equals(password)){

            return user;
        }
        return null;
    }

    @Override
    public User Register() {
        return null;
    }

    @Override
    public User findByid(Integer id) {
        return usermapper.findByid(id);
    }

    @Override
    public User findByUUid(String uuid) {
        return usermapper.findByUUid(uuid);
    }

    @Override
    public List<User> findAll() {
        return null;
    }


    @Override
    public void deleteByid(Integer id) {

    }

    @Override
    public void deleteByUUid(String uuid) {

    }

    @Override
    public int update(User user) {
        return 0;
    }


    @Override
    public void insert(User user) {

    }
}
