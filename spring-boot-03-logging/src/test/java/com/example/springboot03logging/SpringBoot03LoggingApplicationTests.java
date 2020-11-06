package com.example.springboot03logging;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.ILoggerFactory;
import org.junit.runner.RunWith;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest
class SpringBoot03LoggingApplicationTests {
    //记录器
    Logger logger = LoggerFactory.getLogger(getClass());
    @Test
    void contextLoads() {
        //
        logger.trace("trace");
        logger.info("info日志");
        logger.warn("warn日志");
    }

}
