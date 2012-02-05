package grails2

class Author {

    String name

    static hasMany = [books: Book]
    static constraints = {
    }
}
