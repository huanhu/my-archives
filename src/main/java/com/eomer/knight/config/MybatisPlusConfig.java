package com.eomer.knight.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * demo2 - MybatisPlusConfig
 *
 * @author: Eomer
 * @create: 2020-02-12 17:04
 **/
@EnableTransactionManagement
@Configuration
@MapperScan("com.eomer.knight.mapper")
public class MybatisPlusConfig {
    // mybatis-plus分页插件
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        return new PaginationInterceptor();
    }
}