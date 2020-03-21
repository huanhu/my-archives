package com.eomer.knight.modules.gen.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 * 角色表 实体类
 * </p>
 *
 * @author eomer
 * @since 2020-03-21
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="TRole对象", description="角色表")
public class TRole implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "订单")
    @TableField("pick")
    private Integer pick;

    @ApiModelProperty(value = "名称")
    @TableField("name")
    private String name;


}
