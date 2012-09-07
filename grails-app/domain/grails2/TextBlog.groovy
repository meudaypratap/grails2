package grails2

import groovy.transform.ToString

@ToString(includeNames = true, includeFields = true)
class TextBlog extends Blog {
    String textContent
    static constraints = {
        textContent(nullable: false)
    }
    static mapping = {
        discriminator BlogType.TextBlog.toString()
    }
}
