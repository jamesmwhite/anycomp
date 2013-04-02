<%@ page import="anycomp.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'branchStatus', 'error')} ">
	<label for="branchStatus">
		<g:message code="company.branchStatus.label" default="Branch Status" />
		
	</label>
	<g:textField name="branchStatus" value="${companyInstance?.branchStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyNo', 'error')} ">
	<label for="companyNo">
		<g:message code="company.companyNo.label" default="Company No" />
		
	</label>
	<g:textField name="companyNo" value="${companyInstance?.companyNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyType', 'error')} ">
	<label for="companyType">
		<g:message code="company.companyType.label" default="Company Type" />
		
	</label>
	<g:textField name="companyType" value="${companyInstance?.companyType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="company.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${companyInstance?.createdAt}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'currentStatus', 'error')} ">
	<label for="currentStatus">
		<g:message code="company.currentStatus.label" default="Current Status" />
		
	</label>
	<g:textField name="currentStatus" value="${companyInstance?.currentStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'dissolutionDate', 'error')} required">
	<label for="dissolutionDate">
		<g:message code="company.dissolutionDate.label" default="Dissolution Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dissolutionDate" precision="day"  value="${companyInstance?.dissolutionDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'inactive', 'error')} ">
	<label for="inactive">
		<g:message code="company.inactive.label" default="Inactive" />
		
	</label>
	<g:checkBox name="inactive" value="${companyInstance?.inactive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'incorporationDate', 'error')} required">
	<label for="incorporationDate">
		<g:message code="company.incorporationDate.label" default="Incorporation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="incorporationDate" precision="day"  value="${companyInstance?.incorporationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'jCode', 'error')} ">
	<label for="jCode">
		<g:message code="company.jCode.label" default="JC ode" />
		
	</label>
	<g:textField name="jCode" value="${companyInstance?.jCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="company.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${companyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'openCorporatesURL', 'error')} ">
	<label for="openCorporatesURL">
		<g:message code="company.openCorporatesURL.label" default="Open Corporates URL" />
		
	</label>
	<g:textField name="openCorporatesURL" value="${companyInstance?.openCorporatesURL}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'prevName', 'error')} ">
	<label for="prevName">
		<g:message code="company.prevName.label" default="Prev Name" />
		
	</label>
	<g:select name="prevName" from="${anycomp.Prevname.list()}" multiple="multiple" optionKey="id" size="5" value="${companyInstance?.prevName*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'registryURL', 'error')} ">
	<label for="registryURL">
		<g:message code="company.registryURL.label" default="Registry URL" />
		
	</label>
	<g:textField name="registryURL" value="${companyInstance?.registryURL}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'retrievedAt', 'error')} required">
	<label for="retrievedAt">
		<g:message code="company.retrievedAt.label" default="Retrieved At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="retrievedAt" precision="day"  value="${companyInstance?.retrievedAt}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'source', 'error')} ">
	<label for="source">
		<g:message code="company.source.label" default="Source" />
		
	</label>
	<g:select name="source" from="${anycomp.Source.list()}" multiple="multiple" optionKey="id" size="5" value="${companyInstance?.source*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'updatedAt', 'error')} required">
	<label for="updatedAt">
		<g:message code="company.updatedAt.label" default="Updated At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedAt" precision="day"  value="${companyInstance?.updatedAt}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="company.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${companyInstance?.url}"/>
</div>

