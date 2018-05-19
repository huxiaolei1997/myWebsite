package com.mywebsite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestScope;

@Controller
public class HomePageController {

    // 网站首页
    @RequestMapping(value = {"/index", "/index.html"}, method = RequestMethod.GET)
    public String homePage(Model model) {
        return "front/index";
    }
}
