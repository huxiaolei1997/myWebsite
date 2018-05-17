<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
</head>
<body>
<h2>SpringMVC实现文件上传（带进度条）</h2>
<form action="upload" method="post" id="file_submit" name="file_submit" enctype="multipart/form-data">
    <%--<input type="file" name="file" id="file" multiple="multiple"/><span>文件大小：0Bytes，</span><span>已上传：0Bytes，</span><span>上传进度：0%，</span><span>上传速度：0KB/s，</span><span></span>--%>
    <input type="file" name="file" id="file" multiple="multiple"/><span></span><span></span><span></span><span></span><span></span>

    <input type="button" id="btn_sb" value="提交"/>

    <%--<input type="button" id="btn_sb" value="提交" onclick="uploadFile()"/>--%>
</form>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
    // var timer;
    // function uploadFile() {
    //     var file_sub = $("#file").val();
    //     if (file_sub != "") {
    //         //$("#file_submit").submit();
    //         var file_submit = document.forms.namedItem("file_submit");
    //         var fd = new FormData(file_submit);
    //         $.ajax({
    //             url: "upload",
    //             type: "POST",
    //             data: fd,
    //             processData: false,
    //             contentType: false,
    //             success: function (res) {
    //                 //clearInterval(timer);
    //             },
    //             error: function () {
    //                 alert("文件上传失败！");
    //             }
    //         });
    //         timer = setInterval("get_file_upload_percent()", 1000);
    //     }
    // }
    //
    // function get_file_upload_percent() {
    //     $.ajax({
    //         url: "upfile/progress",
    //         type: "POST",
    //         dataType: "json",
    //         success: function (response) {
    //             var pBytesReadBefore = $("span").eq(1).text();
    //             console.log(pBytesReadBefore);
    //             pBytesReadBefore = pBytesReadBefore.replace(/[^0-9]/ig, "");
    //             if (pBytesReadBefore == "") {
    //                 pBytesReadBefore = 0;
    //             }
    //             console.log("获取已经上传的字节数：" + pBytesReadBefore);
    //             $("span").eq(0).text("文件大小：" + response.pContentLength + "Bytes，");
    //             $("span").eq(1).text("已上传：" + response.pBytesRead + "Bytes，");
    //             $("span").eq(2).text("上传进度：" + response.pRate + "%，");
    //             // 上传速度（保留三位小数）
    //             var speed = ((response.pBytesRead - pBytesReadBefore) / 1024).toFixed(3);
    //             $("span").eq(3).text("上传速度：" + speed + "KB/s");
    //             console.log(speed);
    //             $("span").eq(4).text("当前正在上传第" + response.pItems + "个文件");
    //             console.log("------------------------------------------------");
    //             if (response.pRate == '100.0') {
    //                 clearInterval(timer);
    //                 $("span").eq(3).text("");
    //                 $("span").eq(4).text("成功上传" + response.pItems + "个文件");
    //             }
    //         },
    //         error: function () {
    //             alert("系统异常！获取失败！");
    //         }
    //     });
    // }
    $(function () {
        $("#btn_sb").click(function() {
            // 每隔 1s 向后台请求数据，获取上传进度
            var timer = setInterval(function () {
                $.ajax({
                    url: "upfile/progress",
                    type: "POST",
                    dataType: "json",
                    success: function (response) {
                        var pBytesReadBefore = $("span").eq(1).text();
                        console.log(pBytesReadBefore);
                        pBytesReadBefore = pBytesReadBefore.replace(/[^0-9]/ig, "");
                        if (pBytesReadBefore == "") {
                            pBytesReadBefore = 0;
                        }
                        console.log("获取已经上传的字节数：" + pBytesReadBefore);
                        $("span").eq(0).text("文件大小：" + response.pContentLength + "Bytes，");
                        $("span").eq(1).text("已上传：" + response.pBytesRead + "Bytes，");
                        $("span").eq(2).text("上传进度：" + response.pRate + "%，");
                        // 上传速度（保留三位小数）
                        var speed = ((response.pBytesRead - pBytesReadBefore) / 1024).toFixed(3);
                        $("span").eq(3).text("上传速度：" + speed + "KB/s");
                        console.log(speed);
                        $("span").eq(4).text("当前正在上传第" + response.pItems + "个文件");
                        console.log("------------------------------------------------");
                        if (response.pRate == '100.0') {
                            clearInterval(timer);
                            $("span").eq(3).text("");
                            $("span").eq(4).text("成功上传" + response.pItems + "个文件");
                        }
                    },
                    error: function () {
                        alert("系统异常！获取失败！");
                    }
                });
            }, 1000);

            // 上传文件
            var file_sub = $("#file").val();
            if (file_sub != "") {
                //$("#file_submit").submit();
                var file_submit = document.forms.namedItem("file_submit");
                var fd = new FormData(file_submit);
                $.ajax({
                    url: "upload",
                    type: "POST",
                    data: fd,
                    processData: false,
                    contentType: false,
                    success: function (res) {
                        //clearInterval(timer);
                    },
                    error: function () {
                        alert("文件上传失败！");
                    }
                });
                //timer = setInterval("get_file_upload_percent()", 1000);
            }
        });
    });
</script>
</body>
</html>
