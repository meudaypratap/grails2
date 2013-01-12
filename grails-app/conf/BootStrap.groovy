import com.grails2.Author;
import com.grails2.Book;
import com.grails2.TextBlog;

class BootStrap {

    def init = { servletContext ->

       (1..10).each {
            Author author = new Author(name: "Author_${it}", dob: (new Date() - (it * 30)))
            author.save()
        }

        Author.list().each {Author author ->
            (1..5).each {
                Book book = new Book(name: "Book_${(author.id * 10) + it}", price: ((author.id * 10) + it), dateCreated: new Date() - it)
                author.addToBooks(book)
                author.save()
            }

        }

       new TextBlog(authorName: 'test',textContent: 'This is my blog').save()
       println TextBlog.list()
    }
    def destroy = {
    }
}
