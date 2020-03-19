package com.eomer.knight.modules.gen.controller;


import com.eomer.knight.modules.gen.entity.User;
import com.eomer.knight.modules.gen.mapper.UserMapper;
import com.eomer.knight.modules.gen.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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
@Component
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

    public List<User> show(){

        return userMapper.selectList(null);
    }

    @Resource(name = "userServiceImpl")
    private IUserService iUserService;

    public List<User> test(){

        return iUserService.test();
    }

}
