package anycomp

class Search {
	
	int page
	int perPage
	int totalPages
	int totalCount

    static constraints = {
    }
	
	static hasMany =[company:Company]
}
