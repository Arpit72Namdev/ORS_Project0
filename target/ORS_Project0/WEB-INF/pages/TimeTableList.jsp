<%@ page language="java" contentType="text/html;charset=UTF-8 "
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page isELIgnored="false"%>
<script type="text/javascript">
	function checkAll(master) {
		var checked = master.checked;
		var col = document.getElementsByTagName("INPUT");
		for (var i = 0; i < col.length; i++) {
			col[i].checked = checked;
		}
	}
</script>
<div>
	<h1 class="col-sm-offset-4">
		<span class="label label-primary"> <s:message
				code="label.timetableList" /></span>
	</h1>
	<c:url var="editUrl" value="/ctl/TimeTable?id=" />
	<c:url var="editUrl1" value="/ctl/TimeTable" />
	<c:url var="editUrl2" value="/ctl/TimeTable?pageNo=" />
	<sf:form action="search" method="POST" commandName="form"
		class="form-inline container  text-center">

		<sf:hidden path="pageNo" />
		<sf:hidden path="pageSize" />
		<h3></h3>
		<div class="col-sm-offset-3">
			<c:choose>
				<c:when test="${empty error }">
					<div style="width: 50%; height: 10%;" class="alert alert-danger"
						hidden="">
						<strong></strong> ${error }
					</div>

				</c:when>
				<c:otherwise>
					<div style="width: 50%; height: 10%;" class="alert alert-danger">
						<h5 align="center">
							<strong>${error }</strong>
						</h5>
					</div>

				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty success }">
					<div style="width: 50%; height: 10%;" class="alert alert-success"
						hidden="">
						<strong>Data Saved !..</strong> ${success }
					</div>


				</c:when>
				<c:otherwise>
					<div style="width: 50%; height: 10%;" class="alert alert-success">
						<h5 align="center">
							<strong>${success }</strong>
						</h5>
					</div>

				</c:otherwise>

			</c:choose>
		</div>
		<h3></h3>
		<div align="center" class="forminline">
			<div>
				<label><s:message code="label.facultyName" />*</label>

				<sf:input class="form-control" path="facultyName" />

				&nbsp; <label><s:message code="label.courseName" />*</label>
				<sf:input path="courseName" class="form-control" />
				&nbsp;<label><s:message code="label.subjectName" />*</label>
				<sf:input path="subjectName" class="form-control" />
				&nbsp;
				<button type="submit" class="btn btn-primary" name="operation"
					value="Search">
					<s:message code="label.search" />
					&nbsp;<span class="glyphicon glyphicon-search"></span>
				</button>
			</div>


		</div>

		<br>
		<br>

		<table class="table table-striped table-bordered" align="center">
			<c:if test="${!empty list }">
				<tr>
					<th class="col-md-1"><input type="checkbox"
						onclick="checkAll(this)">Select</th>
					<th class="col-md-1">S.No.</th>
					<th class="col-md-1"><s:message code="label.facultyName" /></th>
					<th class="col-md-1"><s:message code="label.courseName" /></th>
					<th class="col-md-1"><s:message code="label.subjectName" /></th>
					<th class="col-md-1"><s:message code="label.day" /></th>
					<th class="col-md-1"><s:message code="label.time" /></th>
					<th class="col-md-1">Edit</th>
				</tr>


				<c:forEach items="${list }" var="timetable" varStatus="ct">
					<tr>
						<td align="left"><input type="checkbox" name="ids"
							value="${timetable.id }"></td>
						<td align="left"><c:out
								value="${(form.pageSize*(form.pageNo-1))+ct.index+1}" /></td>
						<td align="left"><c:out value="${timetable.facultyName }" /></td>
						<td align="left"><c:out value="${timetable.courseName }" /></td>
						<td align="left"><c:out value="${timetable.subjectName }" /></td>
						<td align="left"><c:out value="${timetable.day }" /></td>
						<td align="left"><c:out value="${timetable.time }" /></td>
						<td align="left"><a style="color: black;"
							href="${editUrl }${timetable.id }"><span
								class="glyphicon glyphicon-pencil"></span>Edit</a>
				</c:forEach>

			</c:if>
		</table>
		<table>
			<tr>
				<c:forEach begin="1" end="${noOfPages }" var="=i">
					<c:choose>
						<c:when test="${pageNo eq i }">
							<td>${i }</td>
						</c:when>
						<c:otherwise>
							<td><a href="${editUrl2 }${i}">${i }</a></td>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</tr>
		</table>
		<a href="${editUrl1 }" class="btn btn-primary"><s:message
				code="label.new" /></a>
		<button type="submit" class="btn btn-primary pull-right"
			name="operation" value="Delete">
			<s:message code="label.delete" />
		</button>
		<br>
		<div align="left">
			<div class="btn-group">
				<c:forEach var="i" begin="1" end="${size}">
					<button type="submit" class="btn btn-primary text-center"
						name="pageNO" value="${i}">
						<span
							class="<c:out default="None" escapeXml="true" value="${form.pageNo==i}"/>">${i}</span>
					</button>
				</c:forEach>
			</div>
		</div>
	</sf:form>
</div>