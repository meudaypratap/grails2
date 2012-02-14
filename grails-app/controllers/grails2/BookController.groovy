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

    def association() {
        def query = Author.where {
            books {
                (price >= 20f && price <= 35f)
            }
        }
        render query.list()
    }

    def month() {
        def query = Author.where {
            month(dob) >= 5 && month(dob) <= 10
        }
        render query.list()
    }

    def projections() {
        def query = Book.where {
            price > avg(price)
        }.property('id').property('price').sort('price', 'desc')
        def result
        LogSql.execute {
            result = query.list()
        }
        render result
    }

    def updateAll() {
        def query = Book.where {
            price in (20f..30f)
        }
        int total = query.updateAll(name: "Uday")
        render "Objects updated ${total}"
    }

    def deleteAll() {
        def query = Book.where {
            id in [1l, 2l, 3l, 4l, 5l]
        }
        int total = query.deleteAll()
        render "Objects deleted ${total}"
    }
}