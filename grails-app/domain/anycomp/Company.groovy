package anycomp

class Company {
	
	String name
	String jCode
	String companyNo
	String url
	Date incorporationDate
	Date dissolutionDate
	String companyType
	String registryURL
	String branchStatus
	boolean inactive
	String currentStatus
	Date createdAt
	Date updatedAt
	Date retrievedAt
	String openCorporatesURL
	String registeredAddress

    static constraints = {
    }
	
	static hasMany =[prevName:Prevname,source:Source]
}
