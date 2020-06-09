package com.mywebsite.tools;

import java.math.BigDecimal;

public class ArithmeticUtil {
    public static void main(String[] args) {
        float b = 1 / 3;
        float a = 4096 / 54219 * 10000;
        System.out.println(div(4096, 54219));
    }

    /**
     * 相除
     *
     * @param d1
     * @param d2
     * @return
     */
    public static double div(double d1,double d2){
        return div(d1,d2,5);
    }

    public static double div(double d1,double d2,int scale){
        if(scale < 0){
            throw new IllegalArgumentException("The scale must be a positive integer or zero");
        }
        BigDecimal b1=new BigDecimal(String.valueOf(d1));
        BigDecimal b2=new BigDecimal(String.valueOf(d2));
        return b1.divide(b2,scale,BigDecimal.ROUND_HALF_UP).doubleValue();
    }
}
