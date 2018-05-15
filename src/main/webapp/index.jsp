<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
</head>
<body>
<h2>Hello World!</h2>
<form action="upload" method="post" id="file_submit" enctype="multipart/form-data">
    <input type="file" name="file" id="file" />
    <input type="button" id="btn_sb" value="提交"/>
</form>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
    $(function() {
        $("#btn_sb").click(function() {
            var file_sub = $("#file").val();
            if (file_sub != "") {
                $("#file_submit").submit();
            }
        });
    });
</script>
</body>
</html>
