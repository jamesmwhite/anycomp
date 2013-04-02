
<%@ page import="anycomp.Company" %>
<%@ page import="anycomp.Filing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<%--
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				 --%>
			</ul>
		</div>
		<div id="show-company" class="content scaffold-show" role="main">
			<h1><g:message code="anycompany.company.label"  /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list company">
			
				<g:if test="${companyInstance?.branchStatus}">
				<li class="fieldcontain">
					<span id="branchStatus-label" class="property-label"><g:message code="company.branchStatus.label" default="Branch Status" /></span>
					
						<span class="property-value" aria-labelledby="branchStatus-label"><g:fieldValue bean="${companyInstance}" field="branchStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyNo}">
				<li class="fieldcontain">
					<span id="companyNo-label" class="property-label"><g:message code="company.companyNo.label" default="Company No" /></span>
					
						<span class="property-value" aria-labelledby="companyNo-label"><g:fieldValue bean="${companyInstance}" field="companyNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyType}">
				<li class="fieldcontain">
					<span id="companyType-label" class="property-label"><g:message code="company.companyType.label" default="Company Type" /></span>
					
						<span class="property-value" aria-labelledby="companyType-label"><g:fieldValue bean="${companyInstance}" field="companyType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.createdAt}">
				<li class="fieldcontain">
					<span id="createdAt-label" class="property-label"><g:message code="company.createdAt.label" default="Created At" /></span>
					
						<span class="property-value" aria-labelledby="createdAt-label"><g:formatDate date="${companyInstance?.createdAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.currentStatus}">
				<li class="fieldcontain">
					<span id="currentStatus-label" class="property-label"><g:message code="company.currentStatus.label" default="Current Status" /></span>
					
						<span class="property-value" aria-labelledby="currentStatus-label"><g:fieldValue bean="${companyInstance}" field="currentStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.dissolutionDate}">
				<li class="fieldcontain">
					<span id="dissolutionDate-label" class="property-label"><g:message code="company.dissolutionDate.label" default="Dissolution Date" /></span>
					
						<span class="property-value" aria-labelledby="dissolutionDate-label"><g:formatDate date="${companyInstance?.dissolutionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.inactive}">
				<li class="fieldcontain">
					<span id="inactive-label" class="property-label"><g:message code="company.inactive.label" default="Inactive" /></span>
					
						<span class="property-value" aria-labelledby="inactive-label"><g:formatBoolean boolean="${companyInstance?.inactive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.incorporationDate}">
				<li class="fieldcontain">
					<span id="incorporationDate-label" class="property-label"><g:message code="company.incorporationDate.label" default="Incorporation Date" /></span>
					
						<span class="property-value" aria-labelledby="incorporationDate-label"><g:formatDate date="${companyInstance?.incorporationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.jCode}">
				<li class="fieldcontain">
					<span id="jCode-label" class="property-label"><g:message code="company.jCode.label" default="Jurisdiction Code" /></span>
					
						<span class="property-value" aria-labelledby="jCode-label"><g:fieldValue bean="${companyInstance}" field="jCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="company.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${companyInstance}" field="name"/></span>
					
				</li>
				</g:if>
				
				
				<g:if test="${companyInstance?.registeredAddress}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="company.registeredAddress.label" default="Registered Address" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${companyInstance}" field="registeredAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.openCorporatesURL}">
				<li class="fieldcontain">
					<span id="openCorporatesURL-label" class="property-label"><g:message code="company.openCorporatesURL.label" default="Open Corporates URL" /></span>
					
						<span class="property-value" aria-labelledby="openCorporatesURL-label">
						<a href=${fieldValue(bean: companyInstance, field: "openCorporatesURL")} target="_blank">
						<g:fieldValue bean="${companyInstance}" field="openCorporatesURL"/>
						</a>
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.prevName}">
				<li class="fieldcontain">
					<span id="prevName-label" class="property-label"><g:message code="company.prevName.label" default="Prev Name" /></span>
					
						<g:each in="${companyInstance.prevName}" var="p">
						<span class="property-value" aria-labelledby="prevName-label"><g:link controller="prevname" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.registryURL}">
				<li class="fieldcontain">
					<span id="registryURL-label" class="property-label"><g:message code="company.registryURL.label" default="Registry URL" /></span>
					
						<span class="property-value" aria-labelledby="registryURL-label">
						<a href=${fieldValue(bean: companyInstance, field: "registryURL")} target="_blank">
						<g:fieldValue bean="${companyInstance}" field="registryURL"/>
						</a>
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.retrievedAt}">
				<li class="fieldcontain">
					<span id="retrievedAt-label" class="property-label"><g:message code="company.retrievedAt.label" default="Retrieved At" /></span>
					
						<span class="property-value" aria-labelledby="retrievedAt-label"><g:formatDate date="${companyInstance?.retrievedAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.source}">
				<li class="fieldcontain">
					<span id="source-label" class="property-label"><g:message code="company.source.label" default="Source" /></span>
					
						<g:each in="${companyInstance.source}" var="s">
						<span class="property-value" aria-labelledby="source-label"><g:link controller="source" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.updatedAt}">
				<li class="fieldcontain">
					<span id="updatedAt-label" class="property-label"><g:message code="company.updatedAt.label" default="Updated At" /></span>
					
						<span class="property-value" aria-labelledby="updatedAt-label"><g:formatDate date="${companyInstance?.updatedAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="company.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label">
						<a href=${fieldValue(bean: companyInstance, field: "url")} target="_blank">
						<g:fieldValue bean="${companyInstance}" field="url"/>
						</a>
						</span>
					
				</li>
				</g:if>
				
				
				
			
			</ol>
			<g:if test="${filings}">
			<h1><g:message code="anycompany.filings.label" default="Filingss" /></h1>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="date" title="${message(code: 'filing.date.label', default: 'Date')}" />
						
						<g:sortableColumn property="title" title="${message(code: 'filing.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'filing.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="filing_code" title="${message(code: 'filing.filing_code.label', default: 'Filingcode')}" />
					
						<g:sortableColumn property="filing_type" title="${message(code: 'filing.filing_type.label', default: 'Filingtype')}" />
					
						<g:sortableColumn property="opencorporates_url" title="${message(code: 'filing.opencorporates_url.label', default: 'OC URL')}" />
					
						
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${filings}" status="i" var="filingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td>
						<font size="2">
						<!--<g:link action="show" id="${filingInstance.id}">${fieldValue(bean: filingInstance, field: "date")}</g:link>-->
						${fieldValue(bean: filingInstance, field: "date")}
						</font>
						</td>
						
						<td>
						<font size="2">
						${fieldValue(bean: filingInstance, field: "title")}
						</font>
						</td>
					
						
						<td>
						<font size="2">
						${fieldValue(bean: filingInstance, field: "description")}
						</font>
						</td>
					
						<td>
						<font size="2">
						${fieldValue(bean: filingInstance, field: "filing_code")}
						</font>
						</td>
					
						<td>
						<font size="2">
						${fieldValue(bean: filingInstance, field: "filing_type")}
						</font>
						</td>
					
						<td>
						<font size="2">
						<a href=${fieldValue(bean: filingInstance, field: "opencorporates_url")} target="_blank">
						Click
						</a>
						</font>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			</g:if>
			<%--
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${companyInstance?.id}" />
					<g:link class="edit" action="edit" id="${companyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			 --%>
		</div>
	</body>
</html>
