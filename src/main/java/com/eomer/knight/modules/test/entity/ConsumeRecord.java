package com.eomer.knight.modules.test.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * demo2 - ConsumeRecord
 *
 * @author: Eomer
 * @create: 2019-12-16 14:15
 **/
@Data
@ApiModel(value = "测试分页参数说明")
public class ConsumeRecord extends Page{

    @ApiModelProperty(value = "id")
    private Integer id;
    @ApiModelProperty(value = "memberId")
    private Integer memberId;
    @ApiModelProperty(value = "months")
    private String months;

}