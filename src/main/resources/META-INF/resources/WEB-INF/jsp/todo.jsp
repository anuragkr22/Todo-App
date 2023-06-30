<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ include file="common/header.jspf" %>

	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="webjars/bootstrap/5.3.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
		<title>Add Todo Page</title>
	</head>
	
	<body>
	
		<%@ include file="common/navigation.jspf" %>
	
		<div class="container">
			<h2>Enter Todo Details</h2>
			<form:form method="post" modelAttribute="todo">
				
				<fieldset class="mb-3">
					<form:label path="description">Description:</form:label>
					<form:input type="text" path="description" name="description" placeholder="Enter Description" required="required" size="50"/>
					<form:errors cssClass="text-warning" path="description"/>
				</fieldset>
				
				<fieldset class="mb-3">
					<form:label path="targetDate">Target Date:</form:label>
					<form:input type="date" id="targetDate" path="targetDate" name="targetDate" placeholder="Enter Target Date" required="required" />
					<form:errors cssClass="text-warning" path="targetDate"/>
				</fieldset>
				
				<form:input type="hidden" path="id"/>
				
				<form:input type="hidden" path="done"/>
				
				<input type="submit" class="btn btn-primary" value="Add">
				
			</form:form>
		</div>
		
		<%@ include file="common/footer.jspf"%>
		
	</body>
	
</html>