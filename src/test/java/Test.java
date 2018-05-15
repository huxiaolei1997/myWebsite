import java.math.BigDecimal;

public class Test {
    public static void main(String[] args) {
        float b = 1 / 3;
        float a = 4096 / 54219 * 10000;
        System.out.println(div(4096, 54219));
    }

    //相除
    public static double div(double d1,double d2){

        return div(d1,d2,10);

    }

    public static double div(double d1,double d2,int scale){
        if(scale<0){
            throw new IllegalArgumentException("The scale must be a positive integer or zero");
        }
        BigDecimal b1=new BigDecimal(Double.toString(d1));
        BigDecimal b2=new BigDecimal(Double.toString(d2));
        return b1.divide(b2,scale,BigDecimal.ROUND_HALF_UP).doubleValue();

    }
}
