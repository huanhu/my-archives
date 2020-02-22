package com.eomer.knight.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eomer.knight.modules.demo.entity.User;
import org.springframework.stereotype.Repository;

/**
 * demo2 - UserMapper
 *
 * @author: Eomer
 * @create: 2020-02-13 19:18
 **/
@Repository
public interface UserMapper extends BaseMapper<User> {

    /**
     * 获得密码
     * @param username 用户名
     */
    String getPassword(String username);

    /**
     * 获得角色权限
     * @param username 用户名
     * @return user/admin
     */
    String getRole(String username);

}