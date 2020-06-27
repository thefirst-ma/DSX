package org.keshe.dsx.service.org.keshe.dsx.service.base;

import org.keshe.dsx.ShopOrder;
import org.keshe.dsx.Vegetable;
import org.keshe.dsx.VegetableOrder;
import org.keshe.dsx.service.IBaseService;

import java.util.List;

public interface IShopOrderService extends IBaseService<ShopOrder> {

    //查询全部订单
    public List<ShopOrder> findAll();

    //查询全部订单商品详情
    public List<VegetableOrder> findAll1();

    public void insert1(Vegetable vegetable);

}
