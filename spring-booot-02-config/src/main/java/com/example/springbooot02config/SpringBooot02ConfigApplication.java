package com.example.springbooot02config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@ImportResource(locations = {"classpath:beans.xml"})
@SpringBootApplication
public class SpringBooot02ConfigApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBooot02ConfigApplication.class, args);
    }

}
