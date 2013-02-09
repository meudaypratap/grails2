package com.grails2

import groovy.transform.ToString

@ToString(includeNames = true, includeFields = true)
class Book {
    Long id
    String name
	Float price
    Date dateCreated

    static belongsTo = [author: Author]

    static mapping = {
        autoTimestamp false
    }

    static constraints = {
        name(nullable: false, blank: false)
        price(nullable: false)
    }
}
