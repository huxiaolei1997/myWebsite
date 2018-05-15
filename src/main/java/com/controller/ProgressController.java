package com.controller;

import com.model.Progress;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class ProgressController {
    @RequestMapping(value = "/upfile/progress", method = RequestMethod.POST )
    @ResponseBody
    public String initCreateInfo(Map<String, Object> model) {
        Progress status = (Progress) model.get("status");
        if(status == null){
            return "{}";
        }
        return status.toString();
    }
}
