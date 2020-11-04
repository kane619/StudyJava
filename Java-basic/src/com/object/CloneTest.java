package com.object;

public class CloneTest implements Cloneable {
    // 声明变量
    String name;
    int likes;

    public static void main(String[] args) {
        // 创建对象
        CloneTest obj1 = new CloneTest();

        // 初始化变量
        obj1.name = "Runoob";
        obj1.likes = 111;

        // 打印输出
        System.out.println(obj1.name); // Runoob
        System.out.println(obj1.likes); // 111

        try {

            // 创建 obj1 的拷贝
            CloneTest obj2 = (CloneTest) obj1.clone();

            // 使用 obj2 输出变量
            System.out.println(obj2.name); // Runoob
            System.out.println(obj2.likes); // 111
        } catch (Exception e) {
            System.out.println(e);
        }

        // Object 使用 hashCode()
        Object obj2 = new Object();
        System.out.println(obj2.hashCode());

        Object obj3 = new Object();
        System.out.println(obj3.hashCode());
        System.out.println(obj3.toString());
    }
}
