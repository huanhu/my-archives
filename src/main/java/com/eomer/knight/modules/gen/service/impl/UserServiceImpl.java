package com.eomer.knight.modules.gen.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eomer.knight.modules.gen.entity.User;
import com.eomer.knight.modules.gen.mapper.UserMapper;
import com.eomer.knight.modules.gen.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jobob
 * @since 2020-02-22
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> test(){

        QueryWrapper<User> queryWrapper = new QueryWrapper<>();

        User user = new User();
        user.setName("2");
//        queryWrapper.setEntity(user);

        queryWrapper.like("name", "2");

        return userMapper.selectList(queryWrapper);
    }

}
