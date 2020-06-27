package org.keshe.dsx.web.controller.utils;

import org.springframework.stereotype.Component;

import java.util.List;

import static java.lang.Integer.max;


/**
 * 把工具类注入到spring容器
 */
@Component
public class AI {

    /**在算法中，因为要求解固定数量下 固定花费下 质量最优的菜品
     * 可以利用二维数组来进行求解 设定为V[i][j]，其中可以利用i来存储菜品的id，利用j的最大值储存最大花费，用V[][]的值来储存当前状态下的最大评分
     * 利用数组v[i]来储存当前菜品的价格
     * 利用数组g[j]来储存当前菜品的评分
     * 返回选中的菜品id
     */
    int N=100,M=1000;
    int V[][] = new int[N][M] ;
    int item[]=new int[N] ;
    int v[] =new int[N];
    double g[] = new double[N];

    public List suanfa(int N, int M, int[] v,double [] g){
        /**
         * 两层循环遍历数组V[][]的全部值
         */
        for (int i=1;i<=N;++i)
            for (int j=1;j<=M;++j)
            {
                V[i][j] = V[i-1][j];//给下一个菜品的的评分赋值
                if (j>=v[i])//如果菜品花费大于本个菜品的价值，然后可以更新菜品的评分
                    V[i][j]=max(V[i-1][j],(int)(V[i-1][j-v[i]]+g[i]));
            }
        FindWhat(N,M);
        List list =FindWhat(N,M);
        return  list;
    }
    public List FindWhat(int i, int j)//寻找解的组成方式
    {
        if(i>=1)
        {
            if(V[i][j]==V[i-1][j])//相等说明没装
            {
                item[i]=0;//全局变量，标记未被选中
                FindWhat(i-1,j);
            }
            else if( j-v[i]>=0 && V[i][j]==V[i-1][j-v[i]]+g[i] )
            {
                item[i]=1;//标记已被选中
                FindWhat(i-1,j-v[i]);//回到装包之前的位置
            }
        }
        /***
         * 返回时需要将菜品id 重新对照
         */
        List list =null;
        for ( i=1;i<N;++i){
            if (item[i]== 1)
                list.add(i-1);
        }
        return list;
    }
}
