package grails2

import grails.gorm.DetachedCriteria

class UtilController {

    def index() {}

    def where() {
        def query = Book.where {
            price > 30f || author == Author.get(2)
        }
        List books = query.findAllByNameIlike("Book_1%")
//        List books = query.list([max: 5,sort: 'id'])
//        List books = query.find()
//        List books = query.findAll()
        render(view: '/book/list', model: [bookList: books])
    }

    def range() {
        def query = Book.where {
            price in (20f..30f)
        }
        render(view: '/book/list', model: [bookList: query.list()])
    }

    def association() {
        def query = Author.where {
            books {
                (price >= 20f && price <= 35f)
            }
        }
        render(view: '/author/list', model: [authorList: query.list()])
    }

    def month() {
        def query = Author.where {
            month(dob) >= 5 && month(dob) <= 10
        }
        render(view: '/author/list', model: [authorList: query.list()])
    }

    def projection() {
        def query = Book.where {
        }.projections {
            avg('price')
        }
        render(view: 'result', model: [average: query.find()])
    }

    def projections() {
        def query = Book.where {
            price > avg(price)
        }.property('id').property('price').sort('price', 'desc')
        List results
        LogSql.execute {
            results = query.list()
        }
        render(view: 'result', model: [results: results])
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

    def detachedCriteria() {
        def criteria = new DetachedCriteria(Book).build {
            between('price', 20f, 40f)
        }
        render criteria.list()
//        render criteria.list(max: 5)
//        render criteria.findAll()
//        render criteria.findAllByAuthor(Author.get(3))
//        render criteria.list {
//            ilike("name", "Book_2%")
//        }
//        criteria.each {
//            render it.toString() +"<br/>"
//        }
    }

    def detachedProjections() {
        def criteria = new DetachedCriteria(Book).build {
            projections {
                avg('price')
            }
            between('price', 20f, 40f)
        }
        render criteria.find()
    }

    def subQuery() {
        def results = Book.withCriteria {
            projections {
                property('price')
            }
            gt "price", {
                projections {
                    avg "price"
                }
            }
            order "name"
        }
        render results

        /*def results = new DetachedCriteria(Book).build {
            projections {
                property('price')
            }
            gt "price", {
                projections {
                    avg "price"
                }
            }
            order "name"
        }
        render results.list()*/
    }

    def getAll() {
        def results = Book.withCriteria {
            gtAll "price", {
                projections {
                    property "price"
                }
                between 'price', 20f, 80f
            }

        }
        render results.price
    }

    def detachUpdate() {
        def criteria = new DetachedCriteria(Book).build {
            between('price', 20f, 40f)
        }
        int total = criteria.updateAll(name: "Test")
        render "Updated -: ${total}"
    }

    def detachDelete() {
        def criteria = new DetachedCriteria(Book).build {
            between('price', 20f, 40f)
        }
        int total = criteria.deleteAll()
        render "Updated -: ${total}"
    }
}
