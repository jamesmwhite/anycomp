<%@ page import="anycomp.Filing" %>



<div class="fieldcontain ${hasErrors(bean: filingInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="filing.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${filingInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: filingInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="filing.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${filingInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filingInstance, field: 'filing_code', 'error')} ">
	<label for="filing_code">
		<g:message code="filing.filing_code.label" default="Filingcode" />
		
	</label>
	<g:textField name="filing_code" value="${filingInstance?.filing_code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filingInstance, field: 'filing_type', 'error')} ">
	<label for="filing_type">
		<g:message code="filing.filing_type.label" default="Filingtype" />
		
	</label>
	<g:textField name="filing_type" value="${filingInstance?.filing_type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filingInstance, field: 'opencorporates_url', 'error')} ">
	<label for="opencorporates_url">
		<g:message code="filing.opencorporates_url.label" default="Opencorporatesurl" />
		
	</label>
	<g:textField name="opencorporates_url" value="${filingInstance?.opencorporates_url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filingInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="filing.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${filingInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filingInstance, field: 'uid', 'error')} ">
	<label for="uid">
		<g:message code="filing.uid.label" default="Uid" />
		
	</label>
	<g:textField name="uid" value="${filingInstance?.uid}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: filingInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="filing.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${filingInstance?.url}"/>
</div>

