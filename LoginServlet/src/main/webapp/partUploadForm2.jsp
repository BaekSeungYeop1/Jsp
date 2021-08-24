<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>단일 파일 업로드 테스트</h1>
<form action = "partUploadPro2" method="post" enctype="multipart/form-data">
    <label for="writer">작성자 : </label>
    <input type="text" name="writer" id="writer"><br>
    <label for="partFile1">업로드 파일1 : </label>
    <input type="file" name="parFile1" id="partFile1"><br>
    <label for="partFile2">업로드 파일2 : </label>
    <input type="file" name="parFile2" id="partFile2"><br>
    <input type="submit" value="다중업로드"/>
</form>
</body>
</html>
