package com.example.springboot02configautoconfig;

import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.slf4j.Logger;
import org.slf4j.ILoggerFactory;
@SpringBootApplication
public class SpringBoot02ConfigAutoconfigApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBoot02ConfigAutoconfigApplication.class, args);
        Logger logger = LoggerFactory.getLogger(SpringBoot02ConfigAutoconfigApplication.class);
        logger.info("hello");
    }

}
