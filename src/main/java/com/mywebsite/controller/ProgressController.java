package com.mywebsite.controller;

import com.mywebsite.model.Progress;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class ProgressController {
    @RequestMapping(value = "/upfile/progress", method = RequestMethod.POST )
    public @ResponseBody  Progress initCreateInfo(HttpSession session) {
        Progress status = (Progress) session.getAttribute("status");
        //System.out.println("controller:" + status.toString());
        if(status == null){
            status = new Progress();
            status.setpRate(0.0);
            return status;
        }
        return status;
    }
}
