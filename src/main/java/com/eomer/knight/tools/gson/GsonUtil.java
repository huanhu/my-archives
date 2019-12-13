package com.eomer.knight.tools.gson;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.text.DateFormat;
import java.util.List;
import java.util.Map;

/**
 * demo2 - GsonUtil
 *
 * @author: Eomer
 * @create: 2019-12-13 15:25
 **/
public class GsonUtil {

    private static Gson gson = null;

    static {
        if (gson == null) {
//            gson = new Gson();
            gson = new GsonBuilder()
                    .registerTypeAdapter(new TypeToken<Map<String, Object>>() {}.getType(), new MapTypeAdapter())
                    .setDateFormat(DateFormat.SECOND_FIELD).serializeNulls()
                    .registerTypeAdapterFactory(new NullStringToEmptyAdapterFactory<>())
                    .create();
        }
    }

    private GsonUtil() {
    }

    /**
     * 转成json
     *
     * @param object
     * @return
     */
    public static String GsonString(Object object) {
        String gsonString = null;
        if (gson != null) {
            gsonString = gson.toJson(object);
        }
        return gsonString;
    }

    /**
     * 转成bean
     *
     * @param gsonString
     * @param cls
     * @return
     */
    public static <T> T GsonToBean(String gsonString, Class<T> cls) {
        T t = null;
        if (gson != null) {
            t = gson.fromJson(gsonString, cls);
        }
        return t;
    }

    /**
     * 转成list
     *
     * @param gsonString
     * @param cls
     * @return
     */
    public static <T> List<T> GsonToList(String gsonString, Class<T> cls) {
        List<T> list = null;
        if (gson != null) {
            Type type = new ParameterizedTypeImpl(cls);
            list = gson.fromJson(gsonString, type);
        }
        return list;
    }

    /**
     * 转成list
     *
     * @param object
     * @param cls
     * @return
     */
    public static <T> List<T> ObjectToList(Object object, Class<T> cls) {
        return GsonToList(GsonString(object), cls);
    }

    /**
     * 转成list中有map的
     *
     * @param gsonString
     * @return
     */
    public static <T> List<Map<String, T>> GsonToListMaps(String gsonString) {
        List<Map<String, T>> list = null;
        if (gson != null) {
            list = gson.fromJson(gsonString,
                    new TypeToken<List<Map<String, T>>>() {
                    }.getType());
        }
        return list;
    }

    /**
     * 转成map的
     *
     * @param gsonString
     * @return
     */
    public static <T> Map<String, T> GsonToMaps(String gsonString) {
        Map<String, T> map = null;
        if (gson != null) {
//            map = gson.fromJson(gsonString, new TypeToken<Map<String, T>>() {}.getType());
            map = gson.fromJson(gsonString, new TypeToken<Map<String, Object>>() {
            }.getType());
        }
        return map;
    }

}