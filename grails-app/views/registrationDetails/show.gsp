
<%@ page import="com.boxtoeat.login.RegistrationDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationDetails.label', default: 'RegistrationDetails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registrationDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registrationDetails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registrationDetails">
			
				<g:if test="${registrationDetailsInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="registrationDetails.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${registrationDetailsInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="registrationDetails.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${registrationDetailsInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.addressLine1}">
				<li class="fieldcontain">
					<span id="addressLine1-label" class="property-label"><g:message code="registrationDetails.addressLine1.label" default="Address Line1" /></span>
					
						<span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue bean="${registrationDetailsInstance}" field="addressLine1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="registrationDetails.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${registrationDetailsInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="registrationDetails.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${registrationDetailsInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="registrationDetails.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${registrationDetailsInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="registrationDetails.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${registrationDetailsInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="registrationDetails.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${registrationDetailsInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="registrationDetails.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${registrationDetailsInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.password2}">
				<li class="fieldcontain">
					<span id="password2-label" class="property-label"><g:message code="registrationDetails.password2.label" default="Password2" /></span>
					
						<span class="property-value" aria-labelledby="password2-label"><g:fieldValue bean="${registrationDetailsInstance}" field="password2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="registrationDetails.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${registrationDetailsInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="registrationDetails.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${registrationDetailsInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationDetailsInstance?.zip}">
				<li class="fieldcontain">
					<span id="zip-label" class="property-label"><g:message code="registrationDetails.zip.label" default="Zip" /></span>
					
						<span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${registrationDetailsInstance}" field="zip"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:registrationDetailsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${registrationDetailsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
