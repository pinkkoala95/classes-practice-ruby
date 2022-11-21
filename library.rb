#You can have an overarching class that other classes inherit 
#methods and attributes

class Library_Book
    attr_accessor :title, :author, :pages

    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end

end

class Fiction_Book < Library_Book
    def book_classification
        if @pages > 500
            "Novel"
        else
            "Short Story"
        end
    end
end

class NonFiction_Book < Library_Book
     #this is a class method
     def self.print_out
        "Printed out book"
    end
    #this is an instance method
    def converts_to_pdf
        "Converted to pdf"
    end
end


Book1 = Fiction_Book.new("Harry Potter", "JK Rowling", 500)
Book2 = Fiction_Book.new("Lord of the Rings", "Tolkein", 800)
Book3 = NonFiction_Book.new("Guide to PERU", "Emma Keeley", 100)

puts Book3.title
