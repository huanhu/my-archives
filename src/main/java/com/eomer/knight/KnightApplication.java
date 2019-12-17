package com.eomer.knight;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import springfox.documentation.swagger2.annotations.EnableSwagger2;


@SpringBootApplication
@ServletComponentScan   //启动器启动时，扫描本目录以及子目录带有的webservlet注解的
@EnableAutoConfiguration // 可以帮助SpringBoot应用将所有符合条件的@Configuration配置都加载到当前SpringBoot创建并使用的IoC容器。
@EnableSwagger2// 启动swagger ui注解
public class KnightApplication {

    private static Logger logger = LoggerFactory.getLogger("test1Logger");
    private static Logger logger2 = LoggerFactory.getLogger("test2Logger");
    private static Logger logger3 = LoggerFactory.getLogger(KnightApplication.class);
    //private static Logger logger4 = LoggerFactory.getLogger("TmpLog");
    /** 
    * main 
    * @params [args] 
    * @return void 
    * @author Eomer 
    * @date 2019/10/8 11:11
    */ 
    public static void main(String[] args) {
        logger.info("slf4j 启动 test1Logger info ");
        logger.warn("slf4j 启动 test1Logger warn ");
        logger.error("slf4j 启动 test1Logger error ");

        logger2.info("slf4j 启动 test2Logger info ");
        logger2.warn("slf4j 启动 test2Logger warn ");
        logger2.error("slf4j 启动 test2Logger error ");

        logger3.info("slf4j 启动 默认 info ");
        logger3.warn("slf4j 启动 默认 warn ");
        logger3.error("slf4j 启动 默认 error ");

        //logger4.info("slf4j 启动 TmpLog error ");
        SpringApplication.run(KnightApplication.class, args);
    }

}
