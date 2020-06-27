package org.keshe.dsx.service;

import org.keshe.dsx.mapper.ShopOrderMapper;
import org.keshe.dsx.mapper.UserMapper;
import org.keshe.dsx.mapper.VegetableMapper;
import org.keshe.dsx.mapper.VegetableOrderMapper;
import org.springframework.beans.factory.annotation.Autowired;

public abstract  class BaseServiceImpl<T> implements IBaseService<T> {

    //通一管理dao
    @Autowired
    protected UserMapper usermapper;

    @Autowired
    protected VegetableMapper vegetableMapper;

    @Autowired
    protected ShopOrderMapper shopOrderMapper;

    @Autowired
    protected VegetableOrderMapper vegetableOrderMapper;


}
