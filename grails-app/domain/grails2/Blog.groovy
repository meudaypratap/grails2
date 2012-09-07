package grails2

import groovy.transform.ToString

@ToString(includeNames = true, includeFields = true)
abstract class Blog {

    String authorName

    static constraints = {
        authorName(nullable: false, blank: false)
    }
    static mapping = {
        discriminator column: "type"
    }
}
