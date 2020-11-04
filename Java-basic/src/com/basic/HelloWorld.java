package com.basic;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class HelloWorld {
    public static void main(String[] args) throws InterruptedException {

        for (int i=0;i<args.length;i++){
            System.out.println("args[" + i + "]: " + args[i]);
        }

        System.out.println("Hello World");

        int a = 10;
        int b = 20;
        int c = 25;
        int d = 25;
        System.out.println("a + b = " + (a + b) );
        System.out.println("a - b = " + (a - b) );
        System.out.println("a * b = " + (a * b) );
        System.out.println("b / a = " + (b / a) );
        System.out.println("b % a = " + (b % a) );
        System.out.println("c % a = " + (c % a) );
        System.out.println("a++   = " +  (a++) );
        System.out.println("a--   = " +  (a--) );
        // 查看  d++ 与 ++d 的不同
        System.out.println("d++   = " +  (d++) );
        System.out.println("++d   = " +  (++d) );


        char[] helloArray = { 'r', 'u', 'n', 'o', 'o', 'b'};
        String helloString = new String(helloArray);
        System.out.println( helloString );

        String dd = "123ahsdfaf";
        String ddd = dd.concat("hal");
        System.out.println(ddd);

        StringBuffer sb = new StringBuffer("haoren");
        sb.append("safdad");
        System.out.println(sb);

        double[] myList = new double[10];
        myList[0] = 1;
        System.out.println(myList);

        double[] myList2 = {1.0,25,9.0};
        for (double enement: myList2) {
            System.out.print(enement);
        }

        // 初始化 Date 对象
        Date date = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        // 使用 toString() 函数显示日期时间
        System.out.println(date.toString());

        System.out.println("当前时间："+ft.format(date));
        Thread.sleep(1000*3);
        System.out.println("当前时间："+ft.format(date));
        //c的使用
        System.out.printf("全部日期和时间信息：%tc%n",date);
        //f的使用
        System.out.printf("年-月-日格式：%tF%n",date);
        //d的使用
        System.out.printf("月/日/年格式：%tD%n",date);
        //r的使用
        System.out.printf("HH:MM:SS PM格式（12时制）：%tr%n",date);
        //t的使用
        System.out.printf("HH:MM:SS格式（24时制）：%tT%n",date);
        //R的使用
        System.out.printf("HH:MM格式（24时制）：%tR",date);

        Calendar c1 = Calendar.getInstance();
        c1.set(2020,5,3);
        System.out.println(c1);

        String months[] = {
                "Jan", "Feb", "Mar", "Apr",
                "May", "Jun", "Jul", "Aug",
                "Sep", "Oct", "Nov", "Dec"};

        int year;
        // 初始化 Gregorian 日历
        // 使用当前时间和日期
        // 默认为本地时间和时区
        GregorianCalendar gcalendar = new GregorianCalendar();
        // 显示当前时间和日期的信息
        System.out.print("Date: ");
        System.out.print(months[gcalendar.get(Calendar.MONTH)]);
        System.out.print(" " + gcalendar.get(Calendar.DATE) + " ");
        System.out.println(year = gcalendar.get(Calendar.YEAR));
        System.out.print("Time: ");
        System.out.print(gcalendar.get(Calendar.HOUR) + ":");
        System.out.print(gcalendar.get(Calendar.MINUTE) + ":");
        System.out.println(gcalendar.get(Calendar.SECOND));

        // 测试当前年份是否为闰年
        if(gcalendar.isLeapYear(year)) {
            System.out.println("当前年份是闰年");
        }
        else {
            System.out.println("当前年份不是闰年");
        }

        int num1 = 1;
        int num2 = 2;

        System.out.println("交换前 num1 的值为：" +
                num1 + " ，num2 的值为：" + num2);

        // 调用swap方法
        swap(num1, num2);
        System.out.println("交换后 num1 的值为：" +
                num1 + " ，num2 的值为：" + num2);


        Cake c11 = new Cake(1);
        Cake c12 = new Cake(2);
        Cake c13 = new Cake(3);

        c12 = c13 = null;
        System.gc(); //调用Java垃圾收集器

    }

    /** 交换两个变量的方法 */
    public static void swap(int n1, int n2) {
        System.out.println("\t进入 swap 方法");
        System.out.println("\t\t交换前 n1 的值为：" + n1
                + "，n2 的值：" + n2);
        // 交换 n1 与 n2的值
        int temp = n1;
        n1 = n2;
        n2 = temp;

        System.out.println("\t\t交换后 n1 的值为 " + n1
                + "，n2 的值：" + n2);
    }

    static class Cake extends Object {
        private int id;

        public Cake(int id) {
            this.id = id;
            System.out.println("Cake Object " + id + "is created");
        }

        protected void finalize() throws java.lang.Throwable {
            super.finalize();
            System.out.println("Cake Object " + id + "is disposed");
        }
    }


    }

