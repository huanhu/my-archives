package com.eomer.knight.modules.demo.web;

import com.eomer.knight.modules.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * demo2 - UserWeb
 *
 * @author: Eomer
 * @create: 2020-02-13 19:22
 **/
@Component
public class UserWeb {

    @Autowired
    private UserService userService;



    public void testSelect() {

        userService.testSelect();

    }
}