<%@ page import="com.boxtoeat.login.RegistrationDetails" %>



<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="registrationDetails.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${registrationDetailsInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="registrationDetails.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${registrationDetailsInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'addressLine1', 'error')} required">
	<label for="addressLine1">
		<g:message code="registrationDetails.addressLine1.label" default="Address Line1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addressLine1" required="" value="${registrationDetailsInstance?.addressLine1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'addressLine2', 'error')} required">
	<label for="addressLine2">
		<g:message code="registrationDetails.addressLine2.label" default="Address Line2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addressLine2" required="" value="${registrationDetailsInstance?.addressLine2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="registrationDetails.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${registrationDetailsInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="registrationDetails.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${registrationDetailsInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="registrationDetails.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${registrationDetailsInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="registrationDetails.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${registrationDetailsInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="registrationDetails.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${registrationDetailsInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'password2', 'error')} required">
	<label for="password2">
		<g:message code="registrationDetails.password2.label" default="Password2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password2" required="" value="${registrationDetailsInstance?.password2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="registrationDetails.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${registrationDetailsInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'telephone', 'error')} required">
	<label for="telephone">
		<g:message code="registrationDetails.telephone.label" default="Telephone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telephone" required="" value="${registrationDetailsInstance?.telephone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationDetailsInstance, field: 'zip', 'error')} required">
	<label for="zip">
		<g:message code="registrationDetails.zip.label" default="Zip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zip" required="" value="${registrationDetailsInstance?.zip}"/>

</div>

