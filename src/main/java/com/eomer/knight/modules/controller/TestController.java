package com.eomer.knight.modules.controller;

import com.eomer.knight.modules.gen.controller.UserController;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * demo2 - TestController
 *
 * @author: Eomer
 * @create: 2020-02-13 19:29
 **/
@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/test")
//Api注解，描述信息 可通过tag进行分类
@Api(value = "test", description = "入口")
public class TestController {
//    private static Logger logger = LoggerFactory.getLogger("RollingFileInfo");

    @Autowired
    private UserController userController;

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    //方法描述
    @ApiOperation(notes = "测试查询人员", value = "test")
    /**
     * server
     * @params [name, sex, age]
     * @return java.lang.Object
     * @author Eomer
     * @date 2019/12/13 18:20
     */
    public Object test() {
        return userController.test();
    }

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    //方法描述
    @ApiOperation(notes = "测试查询人员", value = "show")
    /**
     * server
     * @params [name, sex, age]
     * @return java.lang.Object
     * @author Eomer
     * @date 2019/12/13 18:20
     */
    public Object show() {
        return userController.show();
    }

}