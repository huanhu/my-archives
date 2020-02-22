package com.eomer.knight.modules.demo.service;

import com.eomer.knight.mapper.UserMapper;
import com.eomer.knight.modules.demo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * demo2 - UserService
 *
 * @author: Eomer
 * @create: 2020-02-15 14:43
 **/
@Service
public class UserService {


    @Autowired
    private UserMapper userMapper;


    public void testSelect() {
        System.out.println(("----- selectAll method test ------"));
        List<User> userList = userMapper.selectList(null);

        userList.forEach(System.out::println);
    }

}