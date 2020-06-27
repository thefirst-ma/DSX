package org.keshe.dsx.service.org.keshe.dsx.service.base;

import org.keshe.dsx.Vegetable;
import org.keshe.dsx.service.IBaseService;

import java.util.List;

public interface IVegetableService extends IBaseService<Vegetable> {

    //查询全部菜品
    public List<Vegetable> findAll();

    //修改菜品评分
    public int update(Vegetable vegetable);

}
