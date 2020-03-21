package com.eomer.knight.modules.controller;

import com.eomer.knight.modules.gen.controller.UserController;
import com.eomer.knight.modules.gen.entity.User;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * knight
 * @author: Eomer
 * @create: 2019-08-29 17:05
 **/
@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api")
//Api注解，描述信息 可通过tag进行分类
@Api(value = "api", description = "入口")
/** 
*  
* @params  
* @return  
* @author Eomer 
* @date 2020/3/21 14:34
*/  
public class APIController {

    //
    private static Logger logger = LoggerFactory.getLogger("ApiLogger");


    @Autowired
    private UserController userController;
//    @Autowired
//    private TRoleController tRoleController;

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
    public List<User> show() {
        return userController.show();
    }

//    @RequestMapping(value = "/role", method = RequestMethod.GET)
//    //方法描述
//    @ApiOperation(notes = "角色", value = "role")
    /**
     * server
     * @params [name, sex, age]
     * @return java.lang.Object
     * @author Eomer
     * @date 2019/12/13 18:20
     */
    /*public IPage<TRole> get(@ApiParam(name = "current", value = "当前页数",  example = "1")
                            @RequestParam(value = "current", defaultValue  = "1", required = false) int current,
                            @ApiParam(name = "size", value = "分页数量",  example = "5")
                            @RequestParam(value = "size", defaultValue  = "5", required = false) int size) {

        return tRoleController.getList(current,size);
    }*/

}