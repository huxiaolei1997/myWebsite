package com.mywebsite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WorksController {

    // work页面
    @RequestMapping(value = {"work", "work.html"}, method = RequestMethod.GET)
    public String work() {
        return "front/work";
    }
}
