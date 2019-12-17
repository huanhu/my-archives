package com.eomer.knight.modules.sys.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * demo2 - PageHelper
 *
 * @author: Eomer
 * @create: 2019-12-16 14:07
 **/
@Data
@ApiModel(value = "分页返回说明")
public class PageHelper<T> {

    // 注意：这两个属性名称不能改变，是定死的
    // 实体类集合
    @ApiModelProperty(value = "数据集合")
    private List<T> rows = new ArrayList<T>();
    // 数据总条数
    @ApiModelProperty(value = "数据总条数")
    private int total;
    // setter and getter...

}