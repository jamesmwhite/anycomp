
<%@ page import="anycomp.Filing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'filing.label', default: 'Filing')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-filing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-filing" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list filing">
			
				<g:if test="${filingInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="filing.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${filingInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${filingInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="filing.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${filingInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filingInstance?.filing_code}">
				<li class="fieldcontain">
					<span id="filing_code-label" class="property-label"><g:message code="filing.filing_code.label" default="Filingcode" /></span>
					
						<span class="property-value" aria-labelledby="filing_code-label"><g:fieldValue bean="${filingInstance}" field="filing_code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filingInstance?.filing_type}">
				<li class="fieldcontain">
					<span id="filing_type-label" class="property-label"><g:message code="filing.filing_type.label" default="Filingtype" /></span>
					
						<span class="property-value" aria-labelledby="filing_type-label"><g:fieldValue bean="${filingInstance}" field="filing_type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filingInstance?.opencorporates_url}">
				<li class="fieldcontain">
					<span id="opencorporates_url-label" class="property-label"><g:message code="filing.opencorporates_url.label" default="Opencorporatesurl" /></span>
					
						<span class="property-value" aria-labelledby="opencorporates_url-label"><g:fieldValue bean="${filingInstance}" field="opencorporates_url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filingInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="filing.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${filingInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filingInstance?.uid}">
				<li class="fieldcontain">
					<span id="uid-label" class="property-label"><g:message code="filing.uid.label" default="Uid" /></span>
					
						<span class="property-value" aria-labelledby="uid-label"><g:fieldValue bean="${filingInstance}" field="uid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filingInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="filing.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${filingInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${filingInstance?.id}" />
					<g:link class="edit" action="edit" id="${filingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
