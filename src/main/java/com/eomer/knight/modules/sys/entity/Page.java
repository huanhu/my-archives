package com.eomer.knight.modules.sys.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * demo2 - Page
 *
 * @author: Eomer
 * @create: 2019-12-16 14:13
 **/
@Data
@ApiModel(value = "分页参数说明")
public class Page {

    // 每页显示数量
    @ApiModelProperty(value = "每页显示数量")
    private int limit;
    // 页码
    @ApiModelProperty(value = "页码")
    private int page;
    // sql语句起始索引
    @ApiModelProperty(value = "sql语句起始索引")
    private int offset;
    // setter and getter....

}