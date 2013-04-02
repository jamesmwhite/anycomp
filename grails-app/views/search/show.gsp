
<%@ page import="anycomp.Search" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'search.label', default: 'Search')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-search" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-search" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list search">
			
				<g:if test="${searchInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="search.company.label" default="Company" /></span>
					
						<g:each in="${searchInstance.company}" var="c">
						<span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${searchInstance?.page}">
				<li class="fieldcontain">
					<span id="page-label" class="property-label"><g:message code="search.page.label" default="Page" /></span>
					
						<span class="property-value" aria-labelledby="page-label"><g:fieldValue bean="${searchInstance}" field="page"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${searchInstance?.perPage}">
				<li class="fieldcontain">
					<span id="perPage-label" class="property-label"><g:message code="search.perPage.label" default="Per Page" /></span>
					
						<span class="property-value" aria-labelledby="perPage-label"><g:fieldValue bean="${searchInstance}" field="perPage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${searchInstance?.totalCount}">
				<li class="fieldcontain">
					<span id="totalCount-label" class="property-label"><g:message code="search.totalCount.label" default="Total Count" /></span>
					
						<span class="property-value" aria-labelledby="totalCount-label"><g:fieldValue bean="${searchInstance}" field="totalCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${searchInstance?.totalPages}">
				<li class="fieldcontain">
					<span id="totalPages-label" class="property-label"><g:message code="search.totalPages.label" default="Total Pages" /></span>
					
						<span class="property-value" aria-labelledby="totalPages-label"><g:fieldValue bean="${searchInstance}" field="totalPages"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<%--
			<g:form>
			
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${searchInstance?.id}" />
					<g:link class="edit" action="edit" id="${searchInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			--%>
		</div>
	</body>
</html>
