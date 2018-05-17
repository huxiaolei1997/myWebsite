package com.controller;

import com.model.Progress;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class ProgressController {
    @RequestMapping(value = "/upfile/progress", method = RequestMethod.POST )
    public @ResponseBody  Progress initCreateInfo(HttpSession session) {
        Progress status = (Progress) session.getAttribute("status");
        //System.out.println("controller:" + status.toString());
        if(status == null){
            status.setpRate(0.0);
            return status;
        }
        return status;
    }
}
