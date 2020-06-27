package org.keshe.dsx;

import java.io.Serializable;


//自定义实体类 接收前端数据
public class Count implements Serializable {

    //热菜花费
    private String hotcount;

    //凉菜花费
    private String coolcount;

    public String getHotcount() {
        return hotcount;
    }

    public void setHotcount(String hotcount) {
        this.hotcount = hotcount;
    }

    public String getCoolcount() {
        return coolcount;
    }

    public void setCoolcount(String coolcount) {
        this.coolcount = coolcount;
    }

    @Override
    public String toString() {
        return "Count{" +
                "hotcount='" + hotcount + '\'' +
                ", coolcount='" + coolcount + '\'' +
                '}';
    }
}
