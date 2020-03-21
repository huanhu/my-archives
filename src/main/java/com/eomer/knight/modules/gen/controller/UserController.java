package com.eomer.knight.modules.gen.controller;


import com.eomer.knight.modules.gen.entity.User;
import com.eomer.knight.modules.gen.mapper.UserMapper;
import com.eomer.knight.modules.gen.service.IUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author jobob
 * @since 2020-02-22
 */
@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/user")
//Api注解，描述信息 可通过tag进行分类
@Api(value = "user", description = "用户信息")
public class UserController {


    /*
    简单说下@Resource和@Autowired的区别
    对于一般的Bean注入，用哪个都行
    默认@Autowired是按类型type自动注入
    默认@Resource是按名字byName自动注入，也可以指定type注入
    @Autowired是Spring提供的注解
    @Resource是J2EE提供的注解
    还有@Qualifier，@Inject等注入的注解，个人认为可以忘记了，记住@Resource和@Autowired就好了。
    */
    @Autowired
    private UserMapper userMapper;

    @Resource(name = "userServiceImpl")
    private IUserService iUserService;

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    //方法描述
    @ApiOperation(notes = "获取用户列表", value = "show")
    public List<User> show(){

        return userMapper.selectList(null);
    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    //方法描述
    @ApiOperation(notes = "获取用户列表", value = "test")
    public List<User> test(){

        return iUserService.test();
    }

}
