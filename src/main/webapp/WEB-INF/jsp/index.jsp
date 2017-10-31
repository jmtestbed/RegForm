<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<c:url var="addAction" value="/addUser" ></c:url>
<div class="container">
  <h2>Registration</h2>
  <form:form action="${addAction}" modelAttribute="user">

    <form:label path="firstName">First Name</form:label>
    <form:input type="text" path="firstName" id="firstName" placeholder="John" style="align:left"/>
		<br/><br/>
    <form:label path="lastName">Last Name</form:label>
    <form:input type="text" path="lastName" id="lastName" placeholder="Doe"/>
		<br/><br/>
    <form:label path="address1">Email</form:label>
    <form:input type="text" path="address1" id="address1" placeholder="123 Any Street"/>
		<br/><br/>
	<form:label path="address2">Email</form:label>
    <form:input type="text" path="address2" id="address2" placeholder="Apartment 2H"/>
    	<br/><br/>
    <form:label path="city">City</form:label>
    <form:input type="text" path="city" id="city" placeholder="Philadelphia"/>
		<br/><br/>
	<form:label path="state">State</form:label>
    <form:input type="text" path="state" id="state" placeholder="PA"/>
		<br/><br/>
    <form:label path="zip">Zip</form:label>
    <form:input type="text" path="zip" id="zip" placeholder="90210"/>
		<br/><br/>
    <form:label path="country">Country</form:label>
    <form:input type="text" path="country" id="country" placeholder="USA"/>
		<br/><br/>
    <button type="submit">Register</button>

  </form:form>
</div>
