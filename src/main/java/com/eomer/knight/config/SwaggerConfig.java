package com.eomer.knight.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
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
                //.apis(RequestHandlerSelectors.basePackage("com.eomer.knight.modules.controller"))
                // 不支持 com.eomer.knight.modules.*.controller 及 多个 apis
                .apis(RequestHandlerSelectors.basePackage("com.eomer.knight.modules"))
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
                .title("上帝之眸 API接口文档")
                .description("上帝之眸、龙人武装 eomer 专属辅助工具")
                // license 协议描述， licenseUrl 协议地址
                //.license("协议")
                //.licenseUrl("https://www.baidu.com")
                //服务条款
                //.termsOfServiceUrl("https://fanyi.baidu.com/?aldtype=16047#auto/zh")
                //联系人实体类
                // name - Website 跳转 url ，email 单独
                //.contact( new Contact("eomer", "https://cn.bing.com/?scope=web", "") )
                //版本号
                .version("A-A-A-001")
                .build();
    }

}