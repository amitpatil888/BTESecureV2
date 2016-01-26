
<%@ page import="com.boxtoeat.login.RegistrationDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationDetails.label', default: 'RegistrationDetails')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registrationDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registrationDetails" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="userName" title="${message(code: 'registrationDetails.userName.label', default: 'User Name')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'registrationDetails.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="addressLine1" title="${message(code: 'registrationDetails.addressLine1.label', default: 'Address Line1')}" />
					
						<g:sortableColumn property="addressLine2" title="${message(code: 'registrationDetails.addressLine2.label', default: 'Address Line2')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'registrationDetails.city.label', default: 'City')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'registrationDetails.country.label', default: 'Country')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationDetailsInstanceList}" status="i" var="registrationDetailsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationDetailsInstance.id}">${fieldValue(bean: registrationDetailsInstance, field: "userName")}</g:link></td>
					
						<td>${fieldValue(bean: registrationDetailsInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: registrationDetailsInstance, field: "addressLine1")}</td>
					
						<td>${fieldValue(bean: registrationDetailsInstance, field: "addressLine2")}</td>
					
						<td>${fieldValue(bean: registrationDetailsInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: registrationDetailsInstance, field: "country")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registrationDetailsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
