
<%@ page import="anycomp.Search" %>
<%@ page import="anycomp.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'search.label', default: 'Search')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-search" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<!-- <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li> -->
			</ul>
		</div>
		<div id="list-search" class="content scaffold-list" role="main">
			<h1><g:message code="anycompany.search.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form action="search">
				<g:textField name="term" value="${term}" placeholder="Company Name"/>
				<g:if test="${active }">
					<g:checkBox name="active" checked="${active}"/>Active Only
				</g:if>
				<g:else>
					<g:checkBox name="active" checked="true"/>Active Only
				</g:else>			
				<g:actionSubmit value="Search"/>
				<g:if test="${filteredtext}">
					Filtered by jurisdiction (${ filteredtext})
				</g:if>
			</g:form>
			<g:if test="${jcodes}">
				<form action="search">			
					<g:select name="jcode" from="${jcodes}"/>
					<g:hiddenField name="term" value="${term} "/>
					<g:checkBox name="active" hidden="true" checked="${active }"/>
					<g:actionSubmit value="Filter" name="Search" action="Search"/>			
				</form>
			</g:if>
			<g:if test="${searchInstanceList != null && !searchInstanceList.isEmpty()}">
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="Name"/>
						<g:sortableColumn property="companyNo." title="Company No" />						
						<g:sortableColumn property="companyType" title="Company Type" />
						<g:sortableColumn property="currentStatus" title="Current Status" />
						<g:sortableColumn property="jCode" title="Jurisdiction" />
						<th>SRC</th>
						<%--
						<th>OC</th>
						 --%>
					</tr>
				</thead>
				<tbody>
				<g:each in="${searchInstanceList}" status="i" var="searchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						 <!-- <td title="${fieldValue(bean: searchInstance, field: "name")}"><font size="2"><a href="http://www.google.ie">${fieldValue(bean: searchInstance, field: "name")}</a></font></td> -->
						 <td>
						 <font size="2">
						 <g:link controller="company" action="show" params="[compnum:"${fieldValue(bean: searchInstance, field: "companyNo")}",jur:"${fieldValue(bean: searchInstance, field: "jCode")}"]">
						 ${fieldValue(bean: searchInstance, field: "name")}
						 </g:link>
						 </font>
						 </td>
						 <td><font size="2">${fieldValue(bean: searchInstance, field: "companyNo")}</font></td>
						 <td><font size="2">${fieldValue(bean: searchInstance, field: "companyType")}</font></td>
						 <td><font size="2">${fieldValue(bean: searchInstance, field: "currentStatus")}</font></td>
						 <td><font size="2">${fieldValue(bean: searchInstance, field: "jCode")}</font></td>
						 <td>
						 <g:if test="${fieldValue(bean: searchInstance, field: "registryURL")}">
						 	<font size="2"><a href=${fieldValue(bean: searchInstance, field: "registryURL")} target="_blank">Click</a></font>
						 </g:if>						 
						 </td>
						 <%--
						 <td><a href=${fieldValue(bean: searchInstance, field: "openCorporatesURL")}>URL</a></td>
						  --%>		
					</tr>
				</g:each>
				</tbody>
			</table>
			</g:if>
			<g:else>
			<br/>
			Please search for a company by name
			<br/>
			<br/>
			</g:else>
			
			<%--
			<div class="pagination">
				<g:paginate total="${searchInstanceTotal}" />
			</div>
			 --%>
			
			
			
			
		</div>
		
		
		
	</body>
</html>
