package anycomp

import org.springframework.dao.DataIntegrityViolationException

class FilingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [filingInstanceList: Filing.list(params), filingInstanceTotal: Filing.count()]
    }

    def create() {
        [filingInstance: new Filing(params)]
    }

    def save() {
        def filingInstance = new Filing(params)
        if (!filingInstance.save(flush: true)) {
            render(view: "create", model: [filingInstance: filingInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'filing.label', default: 'Filing'), filingInstance.id])
        redirect(action: "show", id: filingInstance.id)
    }

    def show(Long id) {
        def filingInstance = Filing.get(id)
        if (!filingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'filing.label', default: 'Filing'), id])
            redirect(action: "list")
            return
        }

        [filingInstance: filingInstance]
    }

    def edit(Long id) {
        def filingInstance = Filing.get(id)
        if (!filingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'filing.label', default: 'Filing'), id])
            redirect(action: "list")
            return
        }

        [filingInstance: filingInstance]
    }

    def update(Long id, Long version) {
        def filingInstance = Filing.get(id)
        if (!filingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'filing.label', default: 'Filing'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (filingInstance.version > version) {
                filingInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'filing.label', default: 'Filing')] as Object[],
                          "Another user has updated this Filing while you were editing")
                render(view: "edit", model: [filingInstance: filingInstance])
                return
            }
        }

        filingInstance.properties = params

        if (!filingInstance.save(flush: true)) {
            render(view: "edit", model: [filingInstance: filingInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'filing.label', default: 'Filing'), filingInstance.id])
        redirect(action: "show", id: filingInstance.id)
    }

    def delete(Long id) {
        def filingInstance = Filing.get(id)
        if (!filingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'filing.label', default: 'Filing'), id])
            redirect(action: "list")
            return
        }

        try {
            filingInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'filing.label', default: 'Filing'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'filing.label', default: 'Filing'), id])
            redirect(action: "show", id: id)
        }
    }
}
