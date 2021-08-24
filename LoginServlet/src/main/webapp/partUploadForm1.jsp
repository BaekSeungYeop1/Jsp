<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//En"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<h1>단일 파일 업로드 테스트</h1>
<form action="partUploadPro1" method="post" enctype="multipart/form-data">
    <label for ="writer">작성자 : </label>
    <input type="text" name="writer" id="writer"><br>
    <label for ="partFile1">업로드 파일: </label>
    <input type="file" name="partFile1" id="partFile1"><br>
    <input type="submit" value="단일업로드"/>
</form>
</body>
</html>
