package com.eomer.knight.modules.controller;

import com.eomer.knight.KnightApplication;
import com.eomer.knight.modules.sys.entity.ConsumeRecord;
import com.eomer.knight.modules.sys.entity.Knight;
import com.eomer.knight.modules.sys.entity.PageHelper;
import com.eomer.knight.tools.gson.GsonUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * knight
 * @author: Eomer
 * @create: 2019-08-29 17:05
 **/
@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api")
//Api注解，描述信息 可通过tag进行分类
@Api(value = "api", description = "入口")
/** 
* API
* @params  
* @return  
* @author Eomer 
* @date 2019/12/13 18:20
*/ 
public class APIController {

    private static Logger logger = LoggerFactory.getLogger("RollingFileInfo");


    @RequestMapping(value = "/pageTest", method = RequestMethod.POST)
    //方法描述
    @ApiOperation(notes = "分页测试", value = "pageTest")
    /** 
    * server 
    * @params [name, sex, age] 
    * @return java.lang.Object 
    * @author Eomer 
    * @date 2019/12/13 18:20
    */ 
    public PageHelper<Knight> pageTest(@RequestBody ConsumeRecord consumeRecord) {

        //page : (limit / offset) + 1, //当前页码

        int offset = consumeRecord.getOffset();
        int limit = consumeRecord.getLimit();
        int pageNum = offset / limit;
        int total = 99;
        //(int) Math.ceil(offset / limit);

        PageHelper page = new PageHelper();
        List list = new ArrayList();
        for (int i = pageNum; i < total; i++) {
            if((offset+limit)>i && i>=offset){
                Knight item = new Knight();
                item.setAge(i);
                item.setName("A"+i);
                item.setSex(i%2);
                list.add(item);
            }
        }
        page.setRows(list);
        page.setTotal(total);
        logger.info("[GsonUtil]: " + GsonUtil.GsonString(page));

        return page;

    }

    @RequestMapping(value = "/pageTest2", method = RequestMethod.GET)
    //方法描述
    @ApiOperation(notes = "分页测试", value = "pageTest2")
    /**
     * server
     * @params [name, sex, age]
     * @return java.lang.Object
     * @author Eomer
     * @date 2019/12/13 18:20
     */
    public PageHelper<Knight> pageTest2(@ApiParam(name = "offset" , value = "SQL语句起始索引",  example = "0")
                                            @RequestParam(value = "offset", defaultValue  = "0") int offset,
                                        @ApiParam(name = "limit" , value = "每页显示数量",  example = "0")
                                        @RequestParam(value = "limit", defaultValue  = "0") int limit) {
        //page : (limit / offset) + 1, //当前页码

        int pageNum = offset / limit;
        //(int) Math.ceil(offset / limit);

        PageHelper page = new PageHelper();
        List list = new ArrayList();
        for (int i = pageNum; i < 9; i++) {
            if((offset+limit)>i && i>=offset){
                Knight item = new Knight();
                item.setAge(i);
                item.setName("A"+i);
                item.setSex(i%2);
                list.add(item);
            }
        }
        page.setRows(list);
        page.setTotal(9);
        logger.info("[GsonUtil]: " + GsonUtil.GsonString(page));

        return page;

    }


    @RequestMapping(value = "/test", method = RequestMethod.GET)
    //方法描述
    @ApiOperation(notes = "测试查询人员", value = "test")
    /**
     * server
     * @params [name, sex, age]
     * @return java.lang.Object
     * @author Eomer
     * @date 2019/12/13 18:20
     */
    public List<Knight> test(@ApiParam(name = "name", value = "姓名") @RequestParam("name") String name,

                                     @ApiParam(name = "sex", value = "性别(男 1， 女 0)",  example = "0")
                                     @RequestParam(value = "sex", defaultValue  = "0", required = false) int sex,

                                     @ApiParam(name = "age" , value = "年龄",  example = "0")
                                     @RequestParam(value = "age", defaultValue  = "0") int age) {

        List list = new ArrayList();
        Knight item = new Knight();
        item.setAge(age);
        item.setName(name);
        item.setSex(sex);
        list.add(item);

        logger.info("[GsonUtil]: " + GsonUtil.GsonString(list));

        return list;

    }

}