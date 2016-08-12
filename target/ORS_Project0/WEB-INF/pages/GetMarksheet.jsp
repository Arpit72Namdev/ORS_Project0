<%@ page language="java" contentType="text/html;charset=UTF-8 "
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ page isELIgnored="false"%>

<div>
	<sf:form commandName="form" method="POST" class="form-inline container">
		<h1 class="col-sm-offset-4">
			<span class="label label-primary"><s:message
					code="label.getMarksheet" /></span>
		</h1>
		<h3></h3>
		<div class="col-sm-offset-3">
			<c:choose>
				<c:when test="${empty error }">
					<div style="width: 60%; height: 10%;" class="alert alert-danger"
						hidden="">
						<h5 align="center">
							<strong>${error }</strong>
						</h5>

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
		</div>
		<div class="col-sm-offset-3">
			<br>
			<div class="forminline">
				<label><s:message code="label.rollNo" />*</label>
				<sf:input style="width:40%" path="rollNo" class="form-control " />
				&nbsp;
				<button type="submit" class="btn btn-primary" name="operation"
					value="Get">
					Go&nbsp;<span class="glyphicon glyphicon-search"></span>
				</button>
			</div>
		</div>
		<br>
		<c:if test="${form.id >0 }">

			<div class="col-sm-offset-3" style="width: 40%;">
				<table class="table table-bordered">
					<tr align="center" class="info">
						<td><s:message code="label.rollNo" /></td>
						<td><c:out value="${form.rollNo }"></c:out></td>
					</tr>
					<tr align="center" class="danger">
						<td><s:message code="label.name" /></td>
						<td><c:out value="${form.name }"></c:out></td>
					</tr>
					<tr align="center" class="info">
						<td><s:message code="label.physics" /></td>
						<td><c:out value="${ form.physics}"></c:out></td>
					</tr>
					<tr align="center" class="danger">
						<td><s:message code="label.chemistry" /></td>
						<td><c:out value="${form.chemistry }"></c:out></td>
					</tr>
					<tr align="center" class="info">
						<td><s:message code="label.maths" /></td>
						<td><c:out value="${form.maths }"></c:out></td>

					</tr>
					<tr align="center" class="danger">
						<td><s:message code="label.total" /></td>
						<td><c:out value="${form.maths+form.physics+form.chemistry }"></c:out></td>
					</tr>
				</table>
			</div>



		</c:if>



	</sf:form>
</div>
