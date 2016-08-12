<%@ page language="java" contentType="text/html;charset=UTF-8 "
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page isELIgnored="false"%>
<br>
<div>

	<div class="col-sm-offset-3">
		<h1 align="left">
			<font face="georgia" size="7px" color="red"><s:message
					code="label.welcome" /> </font>
		</h1>
		<h1 style="background-color: black;"></h1>
		<h1 style="background-color: black;"></h1>
		<h1 style="background-color: black;"></h1>
		<h1 style="background-color: black;"></h1>
		<c:if test="${not empty sessionScope.user }">
			<c:if test="${sessionScope.user.roleId==2 }">
				<h2 align="left" class="text-center">
					<a style="color: blue;" href="">Click here to see your
						Marksheet </a>
				</h2>

			</c:if>
		</c:if>
	</div>
	<br>
	<div>
		<a href="<c:url value="/ctl/Marksheet/get"/>"><img
			title="Click here to get marksheet" alt="img1"
			src="/ORS_Project0/resources/img/online-result.png"></a> <a
			href="<c:url value="/SignUp" />"><img
			title="Click here for registration" alt="img2"
			src="/ORS_Project0/resources/img/OnlineStudentRegistration.png"></a>

	</div>
	<button title="Click here hide/show paragraph" id=b1>
		<h4 style="color: black;">Project Overview:</h4>

	</button>

	<div id="d1">

		<div style="display: block;">
			<p align="left">The Board of Intermediate conduct a test to the
				students who are doing their Intermediate(+2). For this they conduct
				a test. The test result will be realeased for the correction. For
				this the organization maintains data about the results in different
				streams. Their personal hall ticket numbers, total marks in
				different streams, all the students who are passed in different
				districts in different streeams will also be dispalyed according to
				the user views. It maintains all the details about the students .
				The organization does all these manually. It writes down the data
				about the students, their results in the records. All this is a very
				tedious job requiring everything to be done manually. Online results
				addresses all these by automating many of the tasks of the
				organization. It relieves the employees by letting them do all the
				tedious jobs electronically</p>
		</div>



		<h4 style="color: black;">User Characteristics:</h4>

		<p align="left">The Online Results project meant for inter board
			activities to provide environment to deliver results of different
			streams in the intermediate. This project has to provide such
			facilities that it has more user interface and make it cover all the
			requirements of organisation who want to deliver the results of
			intermediate.</p>
		<br>
		<h4 style="color: black;">User Specification of System:</h4>
		<p align="left">Each user is having a particular USER ID and it is
			not similar with any other ID even it his or her is same. The exam
			counciler of the Inter Board can access the data of whole
			organisation. The exam counciler maintains the database consisting of
			all the results of different streams.The user can insert the
			information needed by the board for the process.</p>
	</div>

	<br>
	<%
		Integer hitsCount = (Integer) application
				.getAttribute("hitCounter");
		if (hitsCount == null || hitsCount == 0) {
			/* First visit */
			out.println("You are first viewer !....");
			hitsCount = 1;
		} else {
			/* return visit */
			out.println("<div style=" + "color:black;"
					+ " background-color: black;" + ">");
			out.println("<h4>");
			out.println("Total number of visits:" + " " + hitsCount);
			out.println("</h4>");
			out.println("</div>");
			hitsCount += 1;
		}
		application.setAttribute("hitCounter", hitsCount);
	%>


</div>