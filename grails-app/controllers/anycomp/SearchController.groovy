package anycomp

import groovy.json.JsonSlurper

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.stereotype.Controller;

class SearchController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [searchInstanceList: Search.list(params), searchInstanceTotal: Search.count()]
    }
	
	
	def search(){
		def url = "http://api.opencorporates.com/v0.2/companies/search?api_token=aLWGG8MAVlbIg6vUzxNJ&order=score&per_page=30&q="
		url = url + params.term	
		
		if(params.active=="on"){
			url = url+"&current_status=Active"
			params.active="true"
		}
		else{
			params.active="false"
		}
		if(params.jcode){
			url = url+"&jurisdiction_code="+params.jcode
		}
		def resp = new URL(url).text
		def json = new JsonSlurper().parseText(resp)
		def allcompanies = []
		HashMap<String, Integer> countries = new HashMap<String, Integer>()
		def companies = json.results.companies
		
		companies.each {comp->
			def company = new Company()
			try{
				def compinstance =comp.get("company") 
				company.name=compinstance.get("name")
				company.companyNo = compinstance.get("company_number")
				company.jCode = compinstance.get("jurisdiction_code")
	//			company.dissolutionDate = comp.dissolution_date
//				company.incorporationDate= compinstance.incorporation_date
				company.companyType = compinstance.get("company_type")
				company.registryURL = compinstance.get("registry_url")
				company.branchStatus = compinstance.get("branch_status")
				company.openCorporatesURL = compinstance.get("opencorporates_url")
				company.currentStatus = compinstance.get("current_status")
				countries.put(company.jCode, 0);
				allcompanies.add(company)
			}
			catch(e){
				print e
			}
		}	
		if(params.jcode){
			render(view:"list",model:[active:params.active,searchInstanceList:allcompanies,searchInstanceTotal:allcompanies.size(),term:params.term,filteredtext:params.jcode])
		}
		else{
			render(view:"list",model:[active:params.active,searchInstanceList:allcompanies,searchInstanceTotal:allcompanies.size(),term:params.term,jcodes:countries.keySet().sort()])
		}
		
		 
		
	}

    def create() {
        [searchInstance: new Search(params)]
    }



    def show(Long id) {
        def searchInstance = Search.get(id)
        if (!searchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'search.label', default: 'Search'), id])
            redirect(action: "list")
            return
        }

        [searchInstance: searchInstance]
    }





  
}
