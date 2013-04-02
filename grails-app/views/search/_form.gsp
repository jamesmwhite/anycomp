<%@ page import="anycomp.Search" %>



<div class="fieldcontain ${hasErrors(bean: searchInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="search.company.label" default="Company" />
		
	</label>
	<g:select name="company" from="${anycomp.Company.list()}" multiple="multiple" optionKey="id" size="5" value="${searchInstance?.company*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: searchInstance, field: 'page', 'error')} required">
	<label for="page">
		<g:message code="search.page.label" default="Page" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="page" type="number" value="${searchInstance.page}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: searchInstance, field: 'perPage', 'error')} required">
	<label for="perPage">
		<g:message code="search.perPage.label" default="Per Page" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="perPage" type="number" value="${searchInstance.perPage}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: searchInstance, field: 'totalCount', 'error')} required">
	<label for="totalCount">
		<g:message code="search.totalCount.label" default="Total Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalCount" type="number" value="${searchInstance.totalCount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: searchInstance, field: 'totalPages', 'error')} required">
	<label for="totalPages">
		<g:message code="search.totalPages.label" default="Total Pages" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalPages" type="number" value="${searchInstance.totalPages}" required=""/>
</div>

