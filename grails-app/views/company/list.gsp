
<%@ page import="anycomp.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<!--  <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>-->
			</ul>
		</div>
		<div id="list-company" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="branchStatus" title="${message(code: 'company.branchStatus.label', default: 'Branch Status')}" />
					
						<g:sortableColumn property="companyNo" title="${message(code: 'company.companyNo.label', default: 'Company No')}" />
					
						<g:sortableColumn property="companyType" title="${message(code: 'company.companyType.label', default: 'Company Type')}" />
					
						<g:sortableColumn property="createdAt" title="${message(code: 'company.createdAt.label', default: 'Created At')}" />
					
						<g:sortableColumn property="currentStatus" title="${message(code: 'company.currentStatus.label', default: 'Current Status')}" />
					
						<g:sortableColumn property="dissolutionDate" title="${message(code: 'company.dissolutionDate.label', default: 'Dissolution Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${companyInstanceList}" status="i" var="companyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${companyInstance.id}">${fieldValue(bean: companyInstance, field: "branchStatus")}</g:link></td>
					
						<td>${fieldValue(bean: companyInstance, field: "companyNo")}</td>
					
						<td>${fieldValue(bean: companyInstance, field: "companyType")}</td>
					
						<td><g:formatDate date="${companyInstance.createdAt}" /></td>
					
						<td>${fieldValue(bean: companyInstance, field: "currentStatus")}</td>
					
						<td><g:formatDate date="${companyInstance.dissolutionDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${companyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
