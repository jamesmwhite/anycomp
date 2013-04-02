package anycomp

import java.text.DateFormat;
import java.util.Date;

import groovy.json.JsonSlurper

import org.springframework.dao.DataIntegrityViolationException

class CompanyController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index() {
		redirect(action: "list", params: params)
	}

	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		[companyInstanceList: Company.list(params), companyInstanceTotal: Company.count()]
	}

	def create() {
		[companyInstance: new Company(params)]
	}

	def show() {
		def jurisdiction = params.jur
		def comp_no = params.compnum
		def url = "http://api.opencorporates.com/v0.2/companies/"+jurisdiction+"/"+comp_no+"?api_token=aLWGG8MAVlbIg6vUzxNJ&"
		def resp = new URL(url).text
		def json = new JsonSlurper().parseText(resp)

		def compinstance= json.results.company

		def company = new Company()
		try{
			company.name=compinstance.get("name")
			company.companyNo = compinstance.get("company_number")
			company.jCode = compinstance.get("jurisdiction_code")
			company.registeredAddress = compinstance.get("registered_address_in_full")
			company.dissolutionDate = compinstance.get("dissolution_date")
			company.incorporationDate= Date.parse("yyyy-MM-dd",compinstance.get("incorporation_date"))
			company.companyType = compinstance.get("company_type")
			company.registryURL = compinstance.get("registry_url")
			company.branchStatus = compinstance.get("branch_status")
			company.openCorporatesURL = compinstance.get("opencorporates_url")
			company.currentStatus = compinstance.get("current_status")
			company.updatedAt=Date.parse("yyyy-MM-dd",compinstance.get("updated_at"))
		}
		catch(e){
			print e
		}

		def filurl = "http://api.opencorporates.com/v0.2/companies/"+company.jCode+"/"+company.companyNo+"/filings?api_token=aLWGG8MAVlbIg6vUzxNJ&"
		def filresp = new URL(filurl).text

		def filjson = new JsonSlurper().parseText(filresp)

		def filings= filjson.results.filings
		def allfilings= []
		filings.each {fill->
			
			def fil = fill.filing
			def filing = new Filing()
			filing.id = fil.get("id")
			filing.uid= fil.get("uid")
//			filing.date= fil.get("date")
			filing.date=Date.parse("yyyy-MM-dd",fil.get("date"))
			filing.title= fil.get("title")
			filing.description= fil.get("description")
			filing.url= fil.get("url")
			filing.filing_type= fil.get("filing_type")
			filing.opencorporates_url= fil.get("opencorporates_url")
			filing.filing_code= fil.get("filing_code")
			
			allfilings.add(filing)
		}

		[companyInstance: company,address:company.registeredAddress,filings:allfilings]
	}
}
