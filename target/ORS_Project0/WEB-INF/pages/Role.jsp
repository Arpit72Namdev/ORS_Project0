<%@ page language="java" contentType="text/html;charset=UTF-8 "
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@page isELIgnored="false"%>

<div class="col-sm-offset-2">
	<sf:form method="POST" commandName="form" class="form-horizontal">
		<sf:hidden path="id" />

		<sf:hidden path="createdBy"></sf:hidden>
		<%-- <sf:hidden path="modifiedBy"></sf:hidden> --%>
		<sf:hidden path="createdDatetime"></sf:hidden>
		<sf:hidden path="modifiedDatetime"></sf:hidden>



		<h1 class="col-sm-offset-1">
			<c:choose>
				<c:when test="${form.id > 0}">
					<span class="label label-primary">Edit Role</span>
				</c:when>
				<c:otherwise>
					<span class="label label-primary"><s:message
							code="label.addRole" /></span>
				</c:otherwise>
			</c:choose>
		</h1>
		<br>
		<c:choose>
			<c:when test="${empty error }">
				<div style="width: 50%; height: 10%;" class="alert alert-danger"
					hidden="">
					<strong>Error !..</strong> ${error }
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
		<div class="form-group">
			<label class="col-sm-1"><s:message code="label.role" />*</label>
			<div class="col-sm-4">
				<sf:input class="form-control" path="roleName" />
			</div>
			<sf:errors path="roleName" cssClass="error" />
		</div>

		<div class="form-group">
			<label class="col-sm-1"><s:message code="label.description" />*</label>
			<div class="col-sm-4">
				<sf:textarea class="form-control" path="roleDescription" rows="3"
					cols="2" />
				<%-- <sf:input class="form-control" path="roleDescription" /> --%>
			</div>
			<sf:errors path="roleDescription" cssClass="error" />
		</div>



		<div class="col-sm-offset-1">
			&ensp;
			<button type="submit" class="btn btn-primary" name="operation"
				value="Save">
				<s:message code="label.save" />
			</button>
			<button type="submit" class="btn btn-primary" name="operation"
				value="Cancel">
				<s:message code="label.cancel" />
			</button>
		</div>

	</sf:form>
</div>




