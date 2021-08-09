<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
<style>
table{
	width:400px;
	boarder-collapse:callapse; /* cell 간격 없앰 */
}
th,td{
	border:1px solid #cccccc;
	padding:5px;
}
</style>
</head>

<body>
<form name="frm" method="post" action="deptWriteSave.do"> 
<!-- action 데이터 전송 -->
<table>
	<tr>
		<th>부서번호</th>
		<td>${deptVO.deptno }</td>
	</tr>
	<tr>
		<th>부서이름</th>
		<td>${deptVO.dname }</td>
	</tr>
	<tr>
		<th>부서위치</th>
		<td>${deptVO.loc }</td>
	</tr>
	<tr>
		<th colspan="2"> 
		<button type="button" onclick ="location='deptModifyWrite.do?deptno=${deptVO.deptno}'">수정</button>
		<button type="button" onclick ="location='deptDelete.do?deptno=${deptVO.deptno}'">삭제</button>
		</th>
	</tr>
</table>
</form>
</body>
</html>