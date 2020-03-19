package com.eomer.knight.modules.gen.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.eomer.knight.modules.gen.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jobob
 * @since 2020-02-22
 */
@Repository
public interface IUserService extends IService<User> {

    List<User> test();
}
