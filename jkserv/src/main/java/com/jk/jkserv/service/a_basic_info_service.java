package com.jk.jkserv.service;

import com.jk.jkserv.dao.a_basic_info_dao;
import com.jk.jkserv.entity.a_basic_info;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class a_basic_info_service {
    @Autowired
    a_basic_info_dao a_dao;

    public ArrayList<a_basic_info> getList(int start,int end){
        ArrayList<a_basic_info> al=new ArrayList<>();
        al=a_dao.getAlist(start,end);
        return al;
    }
}
