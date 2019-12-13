package com.eomer.knight.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * SwaggerConfig
 *
 * @author: Eomer
 * @create: 2019-12-13 15:41
 **/
@Configuration
@EnableSwagger2
public class SwaggerConfig {

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                //apiInfo指定测试文档基本信息，这部分将在页面展示
                .apiInfo(apiInfo())
                .pathMapping("/")
                .select()
                //apis() 控制哪些接口暴露给swagger，
                // RequestHandlerSelectors.basePackage("com.info.*")  指定包位置
                .apis(RequestHandlerSelectors.any())
                .apis(RequestHandlerSelectors.basePackage("com.eomer.knight.modules.controller"))
                .paths(PathSelectors.any())
                .build();
    }

    /** 
    * 基本信息，页面展示
    * @params [] 
    * @return springfox.documentation.service.ApiInfo 
    * @author Eomer 
    * @date 2019/12/13 17:02
    */ 
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("测试项目标题")
                .description("接口描述")
                //联系人实体类
//                .contact( new Contact("eomer", "www.baidu.com", "jianingyou@163.com") )
                //版本号
                .version("1.0.0-SNAPSHOT")
                .build();
    }

}