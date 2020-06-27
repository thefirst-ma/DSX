package org.keshe.dsx.web.controller;

import org.keshe.dsx.ShopOrder;
import org.keshe.dsx.Vegetable;
import org.keshe.dsx.VegetableOrder;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IShopOrderService;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IVegetableOrderService;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IVegetableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("order")
public class ShopOrderController {

    @Autowired
    private IShopOrderService iShopOrderService;

    @Autowired
    private IVegetableService iVegetableService;

    @Autowired
    private IVegetableOrderService vegetableOrderService;



    //查找订单信息
    @RequestMapping("info")
    public String info(Model model){
        List<ShopOrder>  list= iShopOrderService.findAll();

//   for(int i =0;i<list.size();i++)
//   {
//        ShopOrder shopOrder =null;
//        String oId="1";
//        shopOrder =iShopOrderService.findByUUid(oId);
//       Date currentTime = shopOrder.getTime1();
//       SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//       String dateString = formatter.format(currentTime);
//
////       ParsePosition pos = new ParsePosition(8);
////       Date currentTime_2 = formatter.parse(dateString, pos);
////       shopOrder.setTime1(currentTime_2);
//       System.out.println(shopOrder);
//       System.out.println(dateString);
//   }
        model.addAttribute("list",list);
        //Vegetable vegetable = iVegetableService.findByUUid();
        return "order/info";
    }

    //查找订单中的商品信息
    @RequestMapping("info1")
    public String info1(String oId ,Model model){
    List <VegetableOrder> list =  vegetableOrderService.findAll();

    //list 初始化为null 时在数组里自动储存地址
    // list 初始化为ArrayList<T>();时在数组里自动储存对象
    List <Vegetable> list1 =new ArrayList<Vegetable>();
    Vegetable vegetable =null;
    for (int i =0;i<list.size();i++)
    {
        VegetableOrder vegetableOrder =list.get(i);
        vegetable=iVegetableService.findByUUid(vegetableOrder.getvId());
        list1.add(vegetable);
        System.out.println(list1);
    }
        model.addAttribute("list",list1);
        return "order/info1";
    }

//    @RequestMapping("insert")
//    public String insert(Vegetable vegetable){
//
//         iShopOrderService.insert(vegetable);
//
//         return
//    }
//    @RequestMapping("insert")
//    public String insert(Vegetable vegetable){
//
//        iShopOrderService.insert(vegetable);
//
//        return
//    }


}
