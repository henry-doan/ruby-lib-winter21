# sudo code comment out thoughts, and break up into small 
# manageable parts

# store all of the books 
  # hash, array, variable
# display all of the books 
  # puts, print or p
  #  need to do multiple times 
# add a book into the library
  # insert, unshift, << in a array 
  # get user info for the book 
  # gets, assign a variable that a book has
# create a  menu to navigate in the program
# puts
# 1, view all books 
# 2, add a book 
# 3, exit
# gets, conditional
# case when, if else 
# methods to  organize 
@books = [
  { title: 'Call to the wild', author: 'Bear girlz', year: 1990, pages: 600 },
  { title: 'cat in the hat', author: 'dr seuss', year: 1930, pages: 60 }
]

def view_menu
  puts "1. View all books"
  puts "2. Add a Book to Library"
  puts "3. Exit"
  menu_choice = gets.strip.to_i
  # .to_s
  # .to_f
  if menu_choice == 1 
    view_books
  elsif menu_choice == 2
    add_book
  elsif menu_choice == 3
    puts "Good Bye, have a nice Night"
    exit
  else 
    puts "Error, please try 1, 2, or 3"
    view_menu
  end
end

def view_books
  # puts @books
  @books.each_with_index do |book, index|
    puts "Book ##{index + 1}"
    book.each do |book_attr, value|
      puts "#{book_attr}: #{value}"
    end
    puts "-------------------"
  end
  view_menu
end

def add_book
  puts "You are adding a book, what is the title?"
  book_title = gets.strip
  puts "How many pages does this book has?"
  book_page = gets.strip.to_i
  # prompt and ask for the author of new book
  # prompt and ask for the year of new book
  new_book = { title: book_title, author: "", year: 0, pages: book_page }
  @books.unshift(new_book)
  # @books << new_book
  view_books
  view_menu
end

view_menu