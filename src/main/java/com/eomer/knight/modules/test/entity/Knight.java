package com.eomer.knight.modules.test.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * demo2 - Knight
 *
 * @author: Eomer
 * @create: 2019-12-13 18:34
 **/
@Data
@ApiModel(value = "返回说明")
public class Knight {

    /**
     * sex : 0
     * name : 1
     * age : 0
     */
    @ApiModelProperty(value = "男 1； 女 0")
    private int sex;
    @ApiModelProperty(value = "姓名")
    private String name;
    @ApiModelProperty(value = "年龄")
    private int age;


}