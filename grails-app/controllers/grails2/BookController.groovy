package grails2

class BookController {
    static layout = 'book'
    def scaffold = Book

    def where() {
        def query = Book.where {
            price > 30f || author == Author.get(2)
        }
//        render query.findAllByNameIlike("Book_1%")
//        render query.list([max: 5,sort: 'id'])
//        render query.find()
//        render query.findAll()
    }

    def range() {
        def query = Book.where {
            price in (20f..30f)
        }
        render query.list()
    }
}
