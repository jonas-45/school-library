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

  def create_person
    person_type = person_option
    return if person_type.nil?

    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp

    case person_type
    when '1'
      create_student(name, age)
    when '2'
      create_teacher(name, age)
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books << Book.new(title, author)
    puts 'Book created successfully'
  end

  def create_rental
    create_rental_book
    book_index = gets.chomp.to_i
    puts
    create_rental_person
    person_index = gets.chomp.to_i
    puts
    print 'Date: '
    date = gets.chomp
    @rentals << Rental.new(date, @books[book_index], @people[person_index])
    puts 'Rental created successfully'
  end
end