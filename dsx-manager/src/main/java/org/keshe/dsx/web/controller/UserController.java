package org.keshe.dsx.web.controller;


import org.keshe.dsx.Count;
import org.keshe.dsx.User;
import org.keshe.dsx.Vegetable;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IUserService;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IVegetableService;
import org.keshe.dsx.web.controller.utils.AI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller//标记这个类是通过注解来映射URL
@RequestMapping("user")
//这里用了@SessionAttributes，可以直接把model中的user(也就key)放入其中
//这样保证了session中存在user这个对象
@SessionAttributes("user")

@Import({AI.class})
/**
 *使用Import 将指定的类的实例注入至Spring 容器中
 */
@ComponentScan
/*把用到的资源导入到当前容器中*/
public class UserController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IVegetableService vegetableService;

    @Autowired
    private AI ai;

    //显示菜品信息侧标栏
    @RequestMapping("manage")
    public String manage(String id) {
        return "user/manage";
    }
    /**
     * 处理空字符串
     * @param binder
     */
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }

//    //显示菜品信息侧标栏
//    @RequestMapping("info")
//    public String info(User user, Model model,Vegetable vegetable){
//
//
//        return "user/info1";
//
//    }}

    //显示菜品信息侧标栏
    @RequestMapping("info1" )
    public String info1(Count count,Model model, String hotcount, String coolcount) {

        /**  return "user/info1"; + form action user/info1 + manange user/info1 页面显示
         *
         */

        System.out.println(hotcount);
        System.out.println(coolcount);

        count.setCoolcount(coolcount);
        count.setHotcount(hotcount);
        model.addAttribute("count", count);
        System.out.println(count);
//        if (!hotcount.equals(null) && !"".equals(hotcount)&&!coolcount.equals(null)&&!"".equals(coolcount))
//        {
//            return "user/info";
//        }
//        else
//        {
//            return "user/info1";
//        }

        if (count==null){
            return "user/info1";
        }
        else {
            return "user/info";
        }

    }


    //为顾客特别智能推荐菜品
    @RequestMapping("info")
    public String info(Count count, Model model){

        Vegetable vegetable = new Vegetable() ;
        List<Vegetable> list =  vegetableService.findAll();

        /**查找全部菜品信息并展示
         * System.out.println(list);
         */
        int N= list.size();  //找到全部菜品数据，得到菜品总数  N

//        String h ="11";
//        h=request.getParameter("hotcount");//获取热菜期望花费
//
//        h 为null 时会产生java.lang.NumberFormatException: 这里对h实现提前赋值
//           if(("").equals(h)||h.equals(null)){
//               h ="0";
//      }
        System.out.println(count);
        int  H =Integer.parseInt(count.getHotcount());//得到热菜的最大花费  H
        int C =Integer.parseInt(count.getCoolcount());//得到凉菜菜的最大花费  C


        int V[]= new int[N+1];//在V[]中储存要用到的菜品价格,并初始化
       double G[]=new double[N+1];//在G[]中储存要用到的菜品评分，初始化
        double G2[]=new double[N+1];//在G2[]中储存要用到的菜品评分，初始化
        /***菜品类型 String
         * 热菜0
         * 凉菜1
         * 初始化数组 v g 当为热菜时 将凉菜评分视为0
         * 利用循环对数组进行初始化 将 V[0]  G[0] 初始化为0 将所有菜品 id+1
         * 0--19
         * 1--20
         */

        for(int i=0;i<list.size();i++) {
            vegetable=vegetableService.findByUUid(String.valueOf(i));
            //得到每个菜品的价格以及评分
            V[i+1]=vegetable.getvPrice().intValue();
            if(vegetable.getvType().equals(0))
            {
                G[i+1]=vegetable.getvGrade();
            }
            else {
                G[i+1]=0;
            }
        }

        /**算法模块 N H v G 各自含义
         * N代表遍历的菜品数量
         *H代表最大花费、
         * v[] 在这里储存菜品价值
         * G[] 在这储存菜品评分
         */
        List list1=ai.suanfa(N,H,V,G);


        //初始化数组 v g 当为凉菜时 将热菜评分视为0
        for(int j=0;j<list.size();j++) {
            vegetable=vegetableService.findByUUid(String.valueOf(j));

            //得到每个菜品的价格
//            V[j]=vegetable.getvPrice().intValue();

            if(vegetable.getvType().equals(1))
            {
                G2[j+1]=vegetable.getvGrade();
            }
            else {
                G2[j+1]=0;
            }
        }
       //list1.addAll(ai.suanfa(N,C,V,G2));

        List <Vegetable> list2= new ArrayList<Vegetable>();
        //利用查出来的物品id 将菜品 装入list
        for (int i =0;i<list1.size();i++)
        {
            String j="0";
               j=String.valueOf(i);
            list2.add(vegetableService.findByUUid(j));
        }

        model.addAttribute("list", list2);

        System.out.println(list1);

        return "user/info";
    }

    //表单提交过来的路径
    @RequestMapping("checkLogin")
    public String checkLogin(User user, Model model){
        //调用service方法
        user = userService.checkLogin(user.getName(), user.getPassword());
        //若有user则添加到model里并且跳转到成功页面
        if(user != null){
            model.addAttribute("user",user);
            return  "Default";
        }
        return "dialog";
    }

    //注销方法
    @RequestMapping("outLogin")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        return "../../index";
    }

    //用户注册方法
    @RequestMapping("regist")
    public String regist(){
        return "../../index";
    }
}
