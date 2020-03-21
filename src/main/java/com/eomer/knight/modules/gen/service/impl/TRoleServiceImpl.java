package com.eomer.knight.modules.gen.service.impl;

import com.eomer.knight.modules.gen.entity.TRole;
import com.eomer.knight.modules.gen.mapper.TRoleMapper;
import com.eomer.knight.modules.gen.service.ITRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * <p>
 * 角色表 服务实现类
 * </p>
 *
 * @author eomer
 * @since 2020-03-21
 */
@Service
public class TRoleServiceImpl extends ServiceImpl<TRoleMapper, TRole> implements ITRoleService {

    @Autowired
    private TRoleMapper tRoleMapper;


}
