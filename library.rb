class Book
    attr_accessor :title, :author, :pages
    #this is a class method
    def self.print_out
        "Printed out book"
    end
    #this is an instance method
    def converts_to_pdf
        "Converted to pdf"
    end
end

Book1 = Book.new
Book1.title = "Harry Potter"
puts Book1.title
return Book1.title