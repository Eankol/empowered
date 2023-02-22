package com.jk.jkserv.dao;

import com.jk.jkserv.entity.a_basic_info;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

@Mapper
public interface a_basic_info_dao {
    @Select("select a_id,a_title,a_date,a_source from a_basic_info LIMIT #{start},#{end};")
    public ArrayList<a_basic_info> getAlist(@Param("start")int start,@Param("end")int end);
}
