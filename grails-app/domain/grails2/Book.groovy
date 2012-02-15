package grails2

import groovy.transform.ToString

@ToString(includeNames = true, includeFields = true)
class Book {
    Long id
    String name
    Float price

    static belongsTo = [author: Author]

    static constraints = {
        name(nullable: false, blank: false)
        price(nullable: false)
    }
}
