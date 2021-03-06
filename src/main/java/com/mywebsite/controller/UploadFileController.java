package com.mywebsite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
public class UploadFileController {

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public @ResponseBody  String uploadFile(@RequestParam(value = "file") MultipartFile... files) throws IOException {
        int index = 0;
        for (MultipartFile f : files) {
            if (f.getSize() > 0) {
                File targetFile = new File("D:\\myWebsite\\" + index + ".jpg");
                f.transferTo(targetFile);//写入目标文件
                index++;
            }
        }
        return "{'status': 0, 'result': '上传成功'}";
    }
}
