package com.eomer.knight.modules.gen.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.eomer.knight.modules.gen.entity.TRole;
import com.eomer.knight.modules.gen.mapper.TRoleMapper;
import com.eomer.knight.modules.gen.service.ITRoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;



/**
 * <p>
 * 角色表 入口
 * </p>
 *
 * @author eomer
 * @since 2020-03-21
 */
@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/tRole")
@Api(value = "tRole", description = "角色表")
public class TRoleController {

    @Autowired
    private TRoleMapper tRoleMapper;

    @Resource(name = "TRoleServiceImpl")
    private ITRoleService iTRoleService;


    @RequestMapping(value = "/getList", method = RequestMethod.GET)
    //方法描述
    @ApiOperation(notes = "获取角色列表", value = "getList")
    /**
     * getList
     * @params []
     * @return com.baomidou.mybatisplus.core.metadata.IPage<com.eomer.knight.modules.gen.entity.TRole>
     * @author Eomer
     * @date 2020/3/21 10:34
     */
    public IPage<TRole> getList(@ApiParam(name = "current", value = "当前页数",  example = "1")
                                @RequestParam(value = "current", defaultValue  = "1", required = false) int current,
                                @ApiParam(name = "size", value = "分页数量",  example = "5")
                                @RequestParam(value = "size", defaultValue  = "5", required = false) int size){

        QueryWrapper<TRole> wrapper = new QueryWrapper();
        //wrapper.like("name", "雨").lt("age", 40);

        IPage<TRole> page = new Page<>();
        page.setCurrent(current);// 查询第几页，每页数量
        page.setSize(size);//每页数量

        IPage<TRole> mapIPage = tRoleMapper.selectPage(page, wrapper);

        return  mapIPage;
    }

}
