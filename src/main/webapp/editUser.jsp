<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑页面</title>
</head>
<body>

<form action="${pageContext.request.contextPath }/updateUser" method="post" class="definewidth m20">
<table>
    <tr>
        <td width="10%" class="tableleft">编号</td>
        <td><input type="text" name="sid" readonly="readonly" value="${user.sid}"/></td>
    </tr>

	<tr>
        <td width="10%" class="tableleft">学号</td>
        <td><input type="text" name="code" value="${user.code}"/></td>
    </tr>

    <tr>
        <td class="tableleft">姓名</td>
        <td><input type="text" name="name" value="${user.name}"/></td>
    </tr>
    <tr>
        <td class="tableleft">密码</td>
         <td><input type="text" name="pwd" value="${user.pwd}"/></td>
    </tr>
    <tr>
        <td class="tableleft">电话</td>
         <td><input type="text" name="phone" value="${user.phone}"/></td>
        <%--  value = "${sessionScope.username.clerkName}"  --%>
    </tr>

    <tr>
        <td class="tableleft">专业</td>
        <td><input type="text" name="major" value="${user.major}"/></td>
    </tr>
    
    <tr>
        <td class="tableleft">班级</td>
        <td><input type="text" name="grade" value="${user.grade}"/></td>
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