package com.jk.jkserv.controller;

import com.jk.jkserv.entity.a_basic_info;
import com.jk.jkserv.service.a_basic_info_service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
public class get_a {
    @Autowired
    a_basic_info_service a_serv;

    @GetMapping("/getAlist")
    public ArrayList<a_basic_info> getAinfolist(int start,int end){
        return a_serv.getList(start,end);
    }
}
