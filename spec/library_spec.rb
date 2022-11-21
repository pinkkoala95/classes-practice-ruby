require 'rspec'
require './library.rb'

#Subject does not have to be named or defined explicity in the 
#test, but is helpful to support understanding
#https://stackoverflow.com/questions/38437162/whats-the-difference-between-rspecs-subject-and-let-when-should-they-be-used#:~:text=Summary%3A%20RSpec's%20subject%20is%20a,understand%20and%20should%20be%20avoided.

describe 'Fiction Book' do
    subject (:book1) { Fiction_Book.new("X","X",10) }
    
    it "is instantiated by RSpec" do
      expect(subject).to be_an(Fiction_Book)
    end

    it "should return the title of Book 1 is Harry Potter" do
        expect(Book1).to have_attributes(:title => "Harry Potter")
    end

    it "should return the title is Guide to Peru" do
        expect(Book3).to have_attributes(:title => "Guide to PERU")
    end

    describe '#book_classification' do
        it "should return short story when pages < 500" do
            testbook = Fiction_Book.new("X","X",10)
            test = testbook.book_classification
            expect(test).to eq("Short Story")
        end
    end
end