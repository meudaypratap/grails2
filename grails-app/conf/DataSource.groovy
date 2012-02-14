dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = org.hibernate.dialect.MySQL5InnoDBDialect // must be set for transactions to work!
    dbCreate = "update"
    username = "root"
    password = "igdefault"
    properties {
        minIdle = 1
        numTestsPerEvictionRun = 3
        testOnBorrow = true
        testWhileIdle = true
        testOnReturn = true
        validationQuery = "SELECT 1"
        minEvictableIdleTimeMillis = (1000 * 60 * 5)
        timeBetweenEvictionRunsMillis = (1000 * 60 * 5)
    }
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    test {
        dataSource {
            url = "jdbc:mysql://localhost:3306/grails2?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8"
        }
    }

    qa {
        dataSource {
            url = "jdbc:mysql://localhost:3306/grails2?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8"
        }
    }
    development {
        dataSource {
            username = "root"
            password = "igdefault"
            url = "jdbc:mysql://localhost:3306/grails2?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8"
        }
    }
}