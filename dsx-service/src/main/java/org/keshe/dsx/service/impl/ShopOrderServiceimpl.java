package org.keshe.dsx.service.impl;

import org.keshe.dsx.ShopOrder;
import org.keshe.dsx.Vegetable;
import org.keshe.dsx.VegetableOrder;
import org.keshe.dsx.service.BaseServiceImpl;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IShopOrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class ShopOrderServiceimpl extends BaseServiceImpl<ShopOrder> implements IShopOrderService {

    @Override
    public ShopOrder findByid(Integer id) {
        return null;
    }

    @Override
    public ShopOrder findByUUid(String uuid) {
        return shopOrderMapper.findByUUid(uuid);
    }

    @Override
    public List<ShopOrder> findAll() {

        return shopOrderMapper.findAll();
    }

    @Override
    public List<VegetableOrder> findAll1() {
        return null;
    }

    /***
     * 查询订单中的商品
     * @param vegetable
     */

//    @Override
//    public List<Vegetable_Order> findAll1() {
//        return shopOrderMapper.findAll1();
//    }

    @Override
    public void insert1(Vegetable vegetable) {

    }

    @Override
    public void deleteByid(Integer id) {

    }

    @Override
    public void deleteByUUid(String uuid) {

    }

    @Override
    public int update(ShopOrder shopOrder) {
        return 0;
    }

    @Override
    public void insert(ShopOrder shopOrder) {

        shopOrderMapper.insert(shopOrder);
    }

    /**
     * 插入菜品 模块
     */
//    @Override
//    public String insert1(Vegetable vegetable) {
//
//        shopOrderMapper.insert1(vegetable);
//    }


}
