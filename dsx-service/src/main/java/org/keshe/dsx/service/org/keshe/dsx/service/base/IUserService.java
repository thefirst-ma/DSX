package org.keshe.dsx.service.org.keshe.dsx.service.base;

import org.keshe.dsx.User;
import org.keshe.dsx.service.IBaseService;

public interface IUserService extends IBaseService<User> {

   //用户登录操作
   public User checkLogin(String username, String password);

    //用户注册操作
    public User Register();
}
