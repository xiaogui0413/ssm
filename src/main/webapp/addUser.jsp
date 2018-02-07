<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath }/addUser" method="post" class="definewidth m20">
<table>

	<tr>
        <td width="10%" class="tableleft">学号</td>
        <td><input type="text" name="code" /></td>
    </tr>

    <tr>
        <td class="tableleft">姓名</td>
        <td><input type="text" name="name" /></td>
    </tr>
    <tr>
        <td class="tableleft">密码</td>
         <td><input type="text" name="pwd"/></td>
    </tr>
    <tr>
        <td class="tableleft">电话</td>
         <td><input type="text" name="phone"/></td>
        <%--  value = "${sessionScope.username.clerkName}"  --%>
    </tr>

    <tr>
        <td class="tableleft">专业</td>
        <td><input type="text" name="major" /></td>
    </tr>
    
    <tr>
        <td class="tableleft">班级</td>
        <td><input type="text" name="grade" /></td>
    </tr>
    
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;
            <button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>

</body>
</html>