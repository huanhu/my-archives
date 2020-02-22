package com.eomer.knight.modules.gen.service.impl;

import com.eomer.knight.modules.gen.entity.User;
import com.eomer.knight.modules.gen.mapper.UserMapper;
import com.eomer.knight.modules.gen.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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

}
