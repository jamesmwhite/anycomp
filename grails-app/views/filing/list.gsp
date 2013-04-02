
<%@ page import="anycomp.Filing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'filing.label', default: 'Filing')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-filing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-filing" class="content scaffold-list" role="main">
			<h1><g:message code="anycompany.search.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="date" title="${message(code: 'filing.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'filing.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="filing_code" title="${message(code: 'filing.filing_code.label', default: 'Filingcode')}" />
					
						<g:sortableColumn property="filing_type" title="${message(code: 'filing.filing_type.label', default: 'Filingtype')}" />
					
						<g:sortableColumn property="opencorporates_url" title="${message(code: 'filing.opencorporates_url.label', default: 'Opencorporatesurl')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'filing.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${filingInstanceList}" status="i" var="filingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${filingInstance.id}">${fieldValue(bean: filingInstance, field: "date")}</g:link></td>
					
						<td>${fieldValue(bean: filingInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: filingInstance, field: "filing_code")}</td>
					
						<td>${fieldValue(bean: filingInstance, field: "filing_type")}</td>
					
						<td>${fieldValue(bean: filingInstance, field: "opencorporates_url")}</td>
					
						<td>${fieldValue(bean: filingInstance, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${filingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
