package com.mywebsite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
    // contact页面
    @RequestMapping(value = {"contact.html", "contact"})
    public String contact() {
        return "front/contact";
    }
}
