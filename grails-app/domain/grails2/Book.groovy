package grails2

class Book {

    String name
    Float price

    static belongsTo = [author: Author]

    static constraints = {
        name(nullable: false, blank: false)
        price(nullable: false)
    }
}
