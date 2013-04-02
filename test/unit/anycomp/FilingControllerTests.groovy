package anycomp



import org.junit.*
import grails.test.mixin.*

@TestFor(FilingController)
@Mock(Filing)
class FilingControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/filing/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.filingInstanceList.size() == 0
        assert model.filingInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.filingInstance != null
    }

    void testSave() {
        controller.save()

        assert model.filingInstance != null
        assert view == '/filing/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/filing/show/1'
        assert controller.flash.message != null
        assert Filing.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/filing/list'

        populateValidParams(params)
        def filing = new Filing(params)

        assert filing.save() != null

        params.id = filing.id

        def model = controller.show()

        assert model.filingInstance == filing
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/filing/list'

        populateValidParams(params)
        def filing = new Filing(params)

        assert filing.save() != null

        params.id = filing.id

        def model = controller.edit()

        assert model.filingInstance == filing
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/filing/list'

        response.reset()

        populateValidParams(params)
        def filing = new Filing(params)

        assert filing.save() != null

        // test invalid parameters in update
        params.id = filing.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/filing/edit"
        assert model.filingInstance != null

        filing.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/filing/show/$filing.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        filing.clearErrors()

        populateValidParams(params)
        params.id = filing.id
        params.version = -1
        controller.update()

        assert view == "/filing/edit"
        assert model.filingInstance != null
        assert model.filingInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/filing/list'

        response.reset()

        populateValidParams(params)
        def filing = new Filing(params)

        assert filing.save() != null
        assert Filing.count() == 1

        params.id = filing.id

        controller.delete()

        assert Filing.count() == 0
        assert Filing.get(filing.id) == null
        assert response.redirectedUrl == '/filing/list'
    }
}
