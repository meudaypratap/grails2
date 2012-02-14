package grails2

import org.apache.log4j.Level
import org.apache.log4j.Logger

class LogSql {

    public static def execute(Closure closure) {
        Logger sqlLogger = Logger.getLogger("org.hibernate.SQL");
        Level currentLevel = sqlLogger.level
        sqlLogger.setLevel(Level.TRACE)
        def result = closure.call()
        sqlLogger.setLevel(currentLevel)
        result
    }
}
