require 'rspec'
require './library.rb'

#These 3 tests are the breakdown of the resoning behind why test 4 works
describe Book do
    it "is instantiated by RSpec" do
      expect(subject).to be_an(Book)
    end
end

describe "Book" do
    subject { Book.new }
    it "has been instantiated" do
      expect(subject).to be_an(Book)
    end
end

describe "Book 1 to be a Book" do
    subject(:book1) { Book.new }
    it "has been instantiated" do
      expect(subject).to be_an(Book)
    end
end

describe Book do
    it { is_expected.to be_an(Book) }
end

# describe Book do
#     xit { is_expected.to validate_presence_of(:self.print_out) }
# end

describe Book do
    it "should return the title is Harry Potter" do
        expect(Book1).to have_attributes(:title => "Harry Potter")
    end
end