<%@ page language="java" contentType="text/html;charset=UTF-8 "
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page isELIgnored="false"%>

<div class="col-sm-offset-2">
	<h1 class="col-sm-offset-2">
		<span class="label label-primary"> <s:message
				code="label.changePassword" /></span>
	</h1>

	<c:url var="editUrl" value="/ctl/User/changepassword" />
	<sf:form commandName="form" method="POST" class="form-horizontal">
		<sf:hidden path="id" />
		<h1></h1>
		<c:choose>
			<c:when test="${empty error }">
				<div style="width: 50%; height: 10%;" class="alert alert-danger"
					hidden="">
					<strong>Error !..</strong> ${error}
				</div>

			</c:when>
			<c:otherwise>
				<div style="width: 50%; height: 10%;" class="alert alert-danger">
					<h5 align="center">
						<strong>${error}</strong>
					</h5>

				</div>

			</c:otherwise>

		</c:choose>
		<c:choose>
			<c:when test="${empty success }">
				<div style="width: 50%; height: 10%;" class="alert alert-success"
					hidden="">
					<strong>Success !..</strong> ${success}
				</div>

			</c:when>
			<c:otherwise>
				<div style="width: 50%; height: 10%;" class="alert alert-success">
					<h5 align="center">
						<strong>${success}</strong>
					</h5>
				</div>

			</c:otherwise>

		</c:choose>
		<h1></h1>
		<br>
		<div class="form-group">
			<label class="col-md-2"><s:message code="label.oldpassword" />*</label>
			<div class="col-sm-4">
				<sf:password class="form-control" path="oldpassword" />
			</div>
			<sf:errors path="oldpassword" cssClass="error" />
		</div>
		<div class="form-group">
			<label class="col-md-2"><s:message code="label.newpassword" />*</label>
			<div class="col-sm-4">
				<sf:password class="form-control" path="newpassword" />
			</div>
			<sf:errors path="newpassword" cssClass="error" />
		</div>
		<div class="form-group">
			<label class="col-md-2"><s:message
					code="label.confirmPassword" />*</label>
			<div class="col-sm-4">
				<sf:password class="form-control" path="confirmpassword" />
			</div>
			<sf:errors path="confirmpassword" cssClass="error" />
		</div>

		<div class="col-sm-offset-2">
			<button type="submit" name="operation" value="Save"
				class="btn btn-primary">
				<s:message code="label.save" />
			</button>
			<a href="${editUrl}" class="btn btn-primary"><s:message
					code="label.cancel" /></a>

		</div>



	</sf:form>
</div>


