require_relative 'person'
require_relative 'decorator'
require_relative 'book'
require_relative 'rental'
require_relative 'teacher'
require_relative 'student'
require_relative 'classroom'

class App
  def initialize
    @books = []
    @people = []
  end

  def list_all_books
    if @books.empty?
      puts 'There are no books in the library'
    else
      @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}".capitalize
      end
    end
  end

  def list_people
    if @people.empty?
      puts 'There are no people in the library'
    else
      @people.each do |person|
        puts "[#{person.class}] Name: #{person.name}, Age: #{person.age}, ID: #{person.id}"
      end
    end
  end
end