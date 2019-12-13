package com.eomer.knight.tools.gson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

/**
 * @program: weixin
 * @description:
 * @author: Eomer
 * @create: 2019-03-05 15:55
 **/
public class ParameterizedTypeImpl implements ParameterizedType {

    Class clazz;

    public ParameterizedTypeImpl(Class clz) {
        clazz = clz;
    }

    @Override
    public Type[] getActualTypeArguments() {
        return new Type[]{clazz};
    }

    @Override
    public Type getRawType() {
        return List.class;
    }

    @Override
    public Type getOwnerType() {
        return null;
    }
}