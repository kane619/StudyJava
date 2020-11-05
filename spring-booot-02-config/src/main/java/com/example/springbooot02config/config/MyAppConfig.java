package com.example.springbooot02config.config;

import com.example.springbooot02config.service.HelloService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
/**
 * //指明当前类是一个配置类，就是来替代之前的spring配置文件
 * */
@Configuration
public class MyAppConfig {
    //将方法的返回值添加到容器中，容器中这个组件的默认id即使就是方法民
    @Bean
    public HelloService helloService02(){
        System.out.println("配置类@Bean给容器中添加组件了...");
        return new HelloService();
    }
}
