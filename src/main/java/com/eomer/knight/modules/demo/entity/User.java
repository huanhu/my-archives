package com.eomer.knight.modules.demo.entity;

import lombok.Data;

/**
 * demo2 - User
 *
 * @author: Eomer
 * @create: 2020-02-13 19:19
 **/
@Data
public class User {
    private Long id;
    private String name;
    private Integer age;
    private String email;
}