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
 <a href="preAddUser">添加</a>
 <a href="updateStockInView?id=${s.sid }">编辑</a>
<table>
     <thead>
    <tr>
        <th>编号</th>
        <th>设备名称</th>
        <th>设备类型</th>
        <th>设备子类型</th>
        <th>设备ID</th>
        <th>入库类型</th>
        <th>仓库名称</th>
        <th>供应商名称</th>
        <th>登记人员</th>
        <th>入库时间</th>
        <th>备注</th>
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
		      <a href="updateStockInView?id=${s.sid }">编辑</a>
		  </td>
		  <td>
		      <a href="outStockInView?id=${s.sid}">出库</a>
		  </td>
		  <td>
		      <a href="deleteUser?id=${s.sid }" onClick="return delConfirm();">删除</a>
		  </td>
		</tr>
	</c:forEach>
</table>
<ul>
	<li><a>共${page.total}条记录</a></li>
	<li><a>第${page.pageNum}页/共${page.pages}页</a></li>
	<li><a href="listStockIn?page=${page.firstPage}">&laquo;</a></li>
	<li><a href="listStockIn?page=${page.prePage}">上一页</a></li>
	<li><a href="listStockIn?page=${page.nextPage}">下一页</a></li>
	<li><a href="listStockIn?page=${page.pages}">&raquo;</a></li>
</ul>

</body>
</html>