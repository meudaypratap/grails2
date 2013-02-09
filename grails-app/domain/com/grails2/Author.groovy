package com.grails2

import groovy.transform.ToString

@ToString(includeNames = true, includeFields = true)
class Author {
    Long id
    String name
	String time
    Date dob
    Boolean male
    Boolean admin

    static hasMany = [books: Book]
    static constraints = {
        name(nullable: false, blank: false)
        dob(nullable: false, blank: false)
		time(time:true,nullable: false, blank: false)
    }
}
