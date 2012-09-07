package grails2

import groovy.transform.ToString

@ToString(includeNames = true, includeFields = true)
class PodCast extends Blog{
    byte[] content
    static constraints = {
        content(nullable: false)
    }
    static mapping = {
        discriminator BlogType.PodCast.toString()
    }
}
