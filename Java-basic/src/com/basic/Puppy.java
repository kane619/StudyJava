package com.basic;

public class Puppy {
    public static int puppyAge;
    public  Puppy(String name){
        System.out.println("小狗的名字是 ： "+name);
    }

    public void setAge(int age){
        puppyAge = age;
    }

    public int getAge(){
        System.out.println("年龄 :"+puppyAge);
        return  puppyAge;
    }

    public static  void  main(String[] args){
        Puppy myPuppy = new Puppy("jessy");
        myPuppy.setAge(2);
        myPuppy.getAge();
    }

}
