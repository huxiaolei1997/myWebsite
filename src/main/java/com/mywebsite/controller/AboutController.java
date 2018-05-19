package com.mywebsite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutController {

    // 关于我页面
    @RequestMapping(value = {"about", "about.html"}, method = RequestMethod.GET)
    public String about() {
        return "front/about";
    }
}
