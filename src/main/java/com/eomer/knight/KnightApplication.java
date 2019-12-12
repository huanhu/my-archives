package com.eomer.knight;

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

    /** 
    * main 
    * @params [args] 
    * @return void 
    * @author Eomer 
    * @date 2019/10/8 11:11
    */ 
    public static void main(String[] args) { SpringApplication.run(KnightApplication.class, args); }

}
