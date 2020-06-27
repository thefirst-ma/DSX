package org.keshe.dsx.web.controller;

import org.keshe.dsx.Vegetable;
import org.keshe.dsx.VegetableOrder;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IVegetableOrderService;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IVegetableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("vegetable")
public class VegetableController {

    @Autowired
    private IVegetableService vegetableService;

    @Autowired
    private IVegetableOrderService iVegetableOrderService;

    //菜品信息展示页面
    @RequestMapping("info")
    public String info(Model model){
      List<Vegetable> list =  vegetableService.findAll();
      /**查找全部菜品信息并展示
         * System.out.println(list);
          */
      model.addAttribute("list", list);
        return "vegetable/info";
    }

    //菜品评分更改
    @RequestMapping("toupdate")
    public String toupdate(Model model,String vId){
        Vegetable vegetable =  vegetableService.findByUUid(vId);
        model.addAttribute("vegetable",vegetable );
        //System.out.println(vegetable);
        return "vegetable/update";
    }

    //菜品评分更改
    @RequestMapping("update")
    public String update(Model model,Vegetable vegetable){

        vegetableService.update(vegetable);
//        vegetableService.findByUUid(vegetable.getvId());
//        model.addAttribute("vegetable",vegetable );
//        //System.out.println(vegetable);
        List<Vegetable> list =  vegetableService.findAll();
        /**查找更新后的全部菜品信息并展示
         * System.out.println(list);
         */
        model.addAttribute("list", list);
        return "vegetable/info";
    }

    //添加菜品到订单中
    @RequestMapping("insert")
    public String insert(Model model, String oId, String vId,  VegetableOrder vegetableOrder){

        Vegetable vegetable = vegetableService.findByUUid(vId);
        vegetableOrder.setoId(oId);
        vegetableOrder.setvId(vegetable.getvId());
        vegetableOrder.setvName(vegetable.getvName());
        iVegetableOrderService.insert(vegetableOrder);
//        vegetableService.findByUUid(vegetable.getvId());
//        model.addAttribute("vegetable",vegetable );
//        //System.out.println(vegetable);
        List<Vegetable> list =  vegetableService.findAll();
        /**查找更新后的全部菜品信息并展示
         * System.out.println(list);
         */
        model.addAttribute("list", list);
        return "vegetable/info";
    }


}
