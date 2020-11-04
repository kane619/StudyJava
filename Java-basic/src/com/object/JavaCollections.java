package com.object;

import com.sun.tools.javac.util.List;

import java.util.*;

public class JavaCollections {
    public static void main(String[] args) {
        ArrayList<String> list=new ArrayList<String>();
        list.add("Hello");
        list.add("AWorld");
        list.add("HAHAHAHA");
        System.out.println(list);
        System.out.println(list.get(1));
        list.set(2,"Java");
        list.remove(2);
        Collections.sort(list);
        System.out.println(list.size());
        //第一种遍历方法使用 For-Each 遍历 List
        for (String str : list) {            //也可以改写 for(int i=0;i<list.size();i++) 这种形式
            System.out.println(str);
        }

        //第二种遍历，把链表变为数组相关的内容进行遍历
        String[] strArray=new String[list.size()];
        list.toArray(strArray);
        for(int i=0;i<strArray.length;i++) //这里也可以改写为  for(String str:strArray) 这种形式
        {
            System.out.println(strArray[i]);
        }

        //第三种遍历 使用迭代器进行相关遍历

        Iterator<String> ite=list.iterator();
        while(ite.hasNext())//判断下一个元素之后有值
        {
            System.out.println(ite.next());
        }

//        遍历map
        Map<String, String> map = new HashMap<String, String>();
        map.put("1", "value1");
        map.put("2", "value2");
        map.put("3", "value3");

        //第一种：普遍使用，二次取值
        System.out.println("通过Map.keySet遍历key和value：");
        for (String key : map.keySet()) {
            System.out.println("key= "+ key + " and value= " + map.get(key));
        }

        //第二种
        System.out.println("通过Map.entrySet使用iterator遍历key和value：");
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> entry = it.next();
            System.out.println("key= " + entry.getKey() + " and value= " + entry.getValue());
        }

        //第三种：推荐，尤其是容量大时
        System.out.println("通过Map.entrySet遍历key和value");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            System.out.println("key= " + entry.getKey() + " and value= " + entry.getValue());
        }

        //第四种
        System.out.println("通过Map.values()遍历所有的value，但不能遍历key");
        for (String v : map.values()) {
            System.out.println("value= " + v);
        }

        LinkedList<String> sites = new LinkedList<String>();
        sites.add("iOS");
        sites.add("Java");
        sites.addFirst("C");
        sites.removeLast();
        System.out.println(sites);


        HashSet<String> hashSites = new HashSet<String>();
        hashSites.add("baidu");
        hashSites.add("google");
        hashSites.add("tencent");
        hashSites.add("baidu");
        hashSites.clear();
        System.out.println(hashSites);

        HashMap<Integer,String> mapSites = new HashMap<Integer, String>();
        mapSites.put(1,"google");
        mapSites.put(2,"ali");
        System.out.println(mapSites);
        for (Integer i: mapSites.keySet()
             ) {
            System.out.println("key: "+"value:"+mapSites.get(i));
        }
        System.out.println(mapSites.hashCode());

    }
}
