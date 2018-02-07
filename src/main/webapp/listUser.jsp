<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生列表</title>
</head>
<body>
 <a href="addUser.jsp">添加</a>
<table>
     <thead>
    <tr>
        <th>编号</th>
        <th>学号</th>
        <th>姓名</th>
        <th>密码</th>
        <th>电话</th>
        <th>专业</th>
        <th>班级</th>
        <th>性别</th>
        <th>生日</th>
        <th>职务</th>
        
        <th colspan=3 align="center">操作</th>
    </tr>
    </thead>
	<c:forEach var="s" items="${user }">
		<tr>	
		  <td>${s.sid }</td>
		  <td>${s.code }</td>
		  <td>${s.pwd }</td>
		  <td>${s.name }</td>
		  <td>${s.phone }</td>
		  <td>${s.major }</td>
		  <td>${s.grade }</td>
		  <td>${s.sex }</td>
		  <td>${s.birthday }</td>
		  <td>${s.job}</td>
		  <td>
		      <a href="editUser?id=${s.sid }">编辑</a>
		  </td>
		  <td>
		      <a href="deleteUser?id=${s.sid }" onClick="return delConfirm();">删除</a>
		  </td>
		</tr>
	</c:forEach>
</table>

<a>共${page.total}条记录</a>
<a>第${page.pageNum}页/共${page.pages}页</a>
<a href="selectList?page=${page.firstPage}">上一页</a>
<a href="selectList?page=${page.nextPage}">下一页</a>
<a href="selectList?page=${page.pages}"></a>

</body>
<script type="text/javascript">

function delConfirm()
{				
	if(confirm("确定要删除吗？"))
	{			
	}
	else{
		return false;
	}
}

</script>
</html>