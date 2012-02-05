package grails2

class Book {

    String name
    Float price

    static belongsTo = [book: Book]

    static constraints = {
    }
}
