package team5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team5.service.Team5Service;

@Controller
public class TestCtrl {
    @Autowired(required=false)
    private Team5Service service;
    
    
}
