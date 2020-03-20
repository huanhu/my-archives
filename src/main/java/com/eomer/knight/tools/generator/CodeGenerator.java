package com.eomer.knight.tools.generator;


import com.baomidou.mybatisplus.core.exceptions.MybatisPlusException;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * 生成代码
 *
 * @author: Eomer
 * @create: 2020-02-15 15:58
 **/
public class CodeGenerator {

    // 演示例子，执行 main 方法控制台输入模块表名回车自动生成对应项目目录中
    /**
     * <p>
     * 读取控制台内容
     * </p>
     */
    public static String scanner(String tip) {
        Scanner scanner = new Scanner(System.in);
        StringBuilder help = new StringBuilder();
        help.append("请输入" + tip + "：");
        System.out.println(help.toString());
        if (scanner.hasNext()) {
            String ipt = scanner.next();
            if (StringUtils.isNotEmpty(ipt)) {
                return ipt;
            }
        }
        throw new MybatisPlusException("请输入正确的" + tip + "！");
    }

    public static void main(String[] args) {
        // 代码生成器
        AutoGenerator mpg = new AutoGenerator();

        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectPath = System.getProperty("user.dir");
        gc.setOutputDir(projectPath + "/src/main/java");
        gc.setAuthor("eomer");//作者
        gc.setOpen(false);
        gc.setSwagger2(true);// 实体属性 Swagger2 注解

        mpg.setGlobalConfig(gc);

        // 数据源配置
        /*DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl("jdbc:mysql://localhost:3306/ant?useUnicode=true&useSSL=false&characterEncoding=utf8");
        // dsc.setSchemaName("public");
        dsc.setDriverName("com.mysql.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("密码");
        mpg.setDataSource(dsc);*/

        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl("jdbc:mysql://localhost:3306/test?characterEncoding=utf8&serverTimezone=UTC&useSSL=false");
        dsc.setDriverName("com.mysql.cj.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("123456");

        /*dsc.setUrl("jdbc:oracle:thin:@127.0.0.1:1521:XE");
        dsc.setDriverName("oracle.jdbc.OracleDriver");
        dsc.setUsername("WX_DD");
        dsc.setPassword("123");*/

        mpg.setDataSource(dsc);

        // 包配置
        PackageConfig pc = new PackageConfig();
        pc.setModuleName(scanner("模块名"));//
        pc.setParent("com.eomer.knight.modules");// 父包名
        mpg.setPackageInfo(pc);

        // 自定义配置
        InjectionConfig cfg = new InjectionConfig() {
            @Override
            public void initMap() {
                // to do nothing
            }
        };

        // 如果模板引擎是 freemarker
        String templatePath = "/templates/Freemarker/mapper.xml.ftl";
        // 如果模板引擎是 velocity
        // String templatePath = "/templates/mapper.xml.vm";

        // 自定义输出配置
        List<FileOutConfig> focList = new ArrayList<>();
        // 自定义配置会被优先输出
        focList.add(new FileOutConfig(templatePath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                // 自定义输出文件名 ， 如果你 Entity 设置了前后缀、此处注意 xml 的名称会跟着发生变化！！
                return projectPath + "/src/main/resources/mapper/" + pc.getModuleName()
                        + "/" + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
            }
        });
        /*
        cfg.setFileCreate(new IFileCreate() {
            @Override
            public boolean isCreate(ConfigBuilder configBuilder, FileType fileType, String filePath) {
                // 判断自定义文件夹是否需要创建
                checkDir("调用默认方法创建的目录");
                return false;
            }
        });
        */
        cfg.setFileOutConfigList(focList);
        mpg.setCfg(cfg);

        // 配置模板
        TemplateConfig templateConfig = new TemplateConfig();

        // 配置自定义输出模板
        //指定自定义模板路径，注意不要带上.ftl/.vm, 会根据使用的模板引擎自动识别
        templateConfig.setController("templates/Freemarker/controller.java");
        templateConfig.setEntity("templates/Freemarker/entity.java");
        templateConfig.setEntityKt("templates/Freemarker/entity.kt");
        templateConfig.setService("templates/Freemarker/service.java");
        templateConfig.setServiceImpl("templates/Freemarker/serviceImpl.java");
        templateConfig.setMapper("templates/Freemarker/mapper.java");
        //templateConfig.setXml("templates/Freemarker/mapper.xml");
        templateConfig.setXml(null);
        mpg.setTemplate(templateConfig);

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();

        // .setCapitalMode(true)// 全局大写命名
        //.setDbColumnUnderline(true)// 全局下划线命名
        // .setTablePrefix(new String[]{"unionpay_"})// 此处可以修改为您的表前缀
        //.setNaming(NamingStrategy.underline_to_camel)// 表名生成策略
        // .setInclude(new String[] {"user"}) // 需要生成的表
        // .setExclude(new String[]{"test"}) // 排除生成的表
        // 自定义实体，公共字段
        // .setSuperEntityColumns(new String[]{"test_id"})
        //.setTableFillList(tableFillList)
        // 自定义实体父类
        // .setSuperEntityClass("com.baomidou.demo.base.BsBaseEntity")
        // // 自定义 mapper 父类
        // .setSuperMapperClass("com.baomidou.demo.base.BsBaseMapper")
        // // 自定义 service 父类
        // .setSuperServiceClass("com.baomidou.demo.base.BsBaseService")
        // // 自定义 service 实现类父类
        // .setSuperServiceImplClass("com.baomidou.demo.base.BsBaseServiceImpl")
        // 自定义 controller 父类
        // .setSuperControllerClass("com.baomidou.demo.TestController")
        // 【实体】是否生成字段常量（默认 false）
        // public static final String ID = "test_id";
        //.setEntityColumnConstant(true)
        // 【实体】是否为构建者模型（默认 false）
        // public User setName(String name) {this.name = name; return this;}
        //.setEntityBuilderModel(true)
        // 【实体】是否为lombok模型（默认 false）<a href="https://projectlombok.org/">document</a>
        //.setEntityLombokModel(true)

        strategy.setNaming(NamingStrategy.underline_to_camel);// 表名生成策略
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);// 数据库表字段映射到实体的命名策略
        strategy.setEntityTableFieldAnnotationEnable(true);
        strategy.setEntityLombokModel(true);//是否 Lombok
        strategy.setRestControllerStyle(false);
        // 公共父类
        //strategy.setSuperControllerClass("你自己的父类控制器,没有就不用设置!");
        // 写于父类中的公共字段
        strategy.setSuperEntityColumns("id");
        strategy.setInclude(scanner("表名，多个英文逗号分割").split(","));
//        strategy.setInclude(scanner("user").split(","));
        strategy.setControllerMappingHyphenStyle(true);
        strategy.setTablePrefix(pc.getModuleName() + "_");
        mpg.setStrategy(strategy);

        // set freemarker engine
        mpg.setTemplateEngine(new FreemarkerTemplateEngine());
        // set beetl engine
        //mpg.setTemplateEngine(new BeetlTemplateEngine());
        // set custom engine (reference class is your custom engine class)
        //mpg.setTemplateEngine(new CustomTemplateEngine());

        mpg.execute();
    }

}