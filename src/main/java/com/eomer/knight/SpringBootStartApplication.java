package com.eomer.knight;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * @program: knight
 * @description: 打包启动类
 * @author: Eomer
 * @create: 2019-08-30 10:21
 **/
public class SpringBootStartApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(KnightApplication.class);
    }
}