<%@ page language="java" contentType="text/html;charset=UTF-8 "
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>

<%@page isELIgnored="false"%>
<div class="col-sm-offset-2">



	<h1 class="col-sm-offset-1">
		<span class="label label-primary"> <s:message
				code="label.userRegistration" /></span>
	</h1>
	<c:url var="editUrl" value="/SignUp" />
	<br>
	<sf:form id="sandbox-container" method="POST" commandName="form"
		class="form-horizontal">
		<sf:hidden path="id" />
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
			<label class="col-sm-2"><s:message code="label.firstName" />*</label>
			<div class="col-sm-4">
				<sf:input class="form-control" path="firstName" />
			</div>
			<sf:errors path="firstName" cssClass="error" />
		</div>

		<div class="form-group">
			<label class="col-sm-2"><s:message code="label.lastName" />*</label>
			<div class="col-sm-4">
				<sf:input class="form-control" path="lastName" />
			</div>
			<sf:errors path="lastName" cssClass="error" />
		</div>

		<div class="form-group">
			<label class="col-sm-2"><s:message code="label.login" />*</label>
			<div class="col-sm-4">
				<sf:input class="form-control" path="login" />
			</div>
			<sf:errors path="login" cssClass="error" />
		</div>

		<div class="form-group">
			<label class="col-sm-2"><s:message code="label.password" />*</label>
			<div class="col-sm-4">
				<sf:input class="form-control" path="password" type="password"
					id="password" />
			</div>
			<sf:errors path="password" cssClass="error" />
		</div>
		<%-- 	<div class="form-group">
			<label class="col-sm-2"><s:message
					code="label.confirmPassword" />*</label>
			<div class="col-sm-4">
				<sf:input class="form-control" path="confirmPassword"
					type="password" id="confirmPassword" />
			</div>
			<sf:errors path="confirmPassword" cssClass="error" />
		</div> --%>
		<div class="form-group">
			<label class="col-sm-2"><s:message code="label.dob" />*</label>
			<div class="col-sm-4">
				<div class="input-group date">
					<sf:input class="form-control" path="dob" id="dob"
						readonly="readonly" />
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-calendar" aria-hidden="true"></span></span>
				</div>
			</div>
			<sf:errors path="dob" cssClass="error" />
		</div>

		<div class="form-group">
			<label class="col-sm-2"><s:message code="label.mobileNo" />*</label>
			<div class="col-sm-4">
				<sf:input class="form-control" path="mobileNo" />
			</div>
			<sf:errors path="mobileNo" cssClass="error" />
		</div>
		<div class="form-group">
			<label class="col-sm-2"><s:message code="label.gender" />*</label>
			<div class="col-sm-4">
				<sf:radiobutton path="gender" value="Male" />
				<s:message code="label.male" />
				<sf:radiobutton path="gender" value="Female" />
				<s:message code="label.female" />
			</div>
			<sf:errors path="gender" cssClass="error" />
		</div>
		<div class="col-sm-offset-2">
			<button type="submit" name="operation" value="SignUp"
				class="btn btn-primary">
				<s:message code="label.save" />
			</button>
			<a href="${editUrl}" class="btn btn-primary"><s:message
					code="label.cancel" /></a>

		</div>
	</sf:form>
</div>


