package com.eomer.knight.modules.controller;

import com.eomer.knight.KnightApplication;
import com.eomer.knight.modules.sys.entity.Knight;
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

    private static Logger logger = LoggerFactory.getLogger(KnightApplication.class);


    @RequestMapping(value = "/init", method = RequestMethod.GET)
    //方法描述
    @ApiOperation(notes = "添加人员", value = "init")
    /** 
    * server 
    * @params [name, sex, age] 
    * @return java.lang.Object 
    * @author Eomer 
    * @date 2019/12/13 18:20
    */ 
    public List<Knight> server(@ApiParam(name = "name", value = "姓名") @RequestParam("name") String name,

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