# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Creating categories..."
fiction = Category.create!(title: "Fiction")
non_fiction = Category.create!(title: "Non-Fiction")
technology = Category.create!(title: "Technology")
religious = Category.create!(title: "Religious")
academic = Category.create!(title: "Academic")
reference = Category.create!(title: "Reference")


puts "Creating sub-categories..."
SubCategory.create!([
  { title: "Contemporary Fiction", category: fiction },
  { title: "Classic Literature", category: fiction },
  { title: "Science Fiction", category: fiction },
  { title: "Mystery", category: fiction }
])

SubCategory.create!([
  { title: "Biography", category: non_fiction },
  { title: "History", category: non_fiction },
  { title: "Science", category: non_fiction },
  { title: "Self-Help", category: non_fiction }
])

SubCategory.create!([
  { title: "Programming", category: technology },
  { title: "Cybersecurity", category: technology },
  { title: "AI", category: technology },
  { title: "Robotics", category: technology }
])

SubCategory.create!([
  { title: "Islam", category: religious },
  { title: "Christianity", category: religious },
  { title: "Buddhism", category: religious },
  { title: "Hinduism", category: religious }
])

SubCategory.create!([
  { title: "Bangla", category: academic },
  { title: "English", category: academic },
  { title: "Mathmetics", category: academic },
  { title: "Physics", category: academic },
  { title: "Chemistry", category: academic },
  { title: "Biology", category: academic },
  { title: "Economics", category: academic },
  { title: "Psychology", category: academic },
  { title: "Accounting", category: academic },
  { title: "Management", category: academic },
  { title: "Marketing", category: academic }
])

SubCategory.create!([
  { title: "Encyclopedias", category: reference },
  { title: "Dictionaries", category: reference },
])

puts "Creating genres..."
genres = Genre.create!([
  { title: "Adventure" },
  { title: "Romance" },
  { title: "Thriller" },
  { title: "Drama" },
  { title: "Fantasy" },
  { title: "Historical" },
  { title: "Educational" }
])


puts "Creating authors..."
authors = Author.create!([
  {
    name: "J.K. Rowling",
    description: "British author known for Harry Potter series",
    email: "jk@example.com",
    profile_pic: "rowling.jpg"
  },
  {
    name: "George Orwell",
    description: "English novelist, essayist, and critic",
    email: "orwell@example.com",
    profile_pic: "orwell.jpg"
  },
  {
    name: "Jane Austen",
    description: "English novelist known for romantic fiction",
    email: "austen@example.com",
    profile_pic: "austen.jpg"
  }
])


puts "Creating books..."
books = [
  {
    title: "Harry potter",
    edition: "First Edition",
    language: "English",
    isbn: "978-0451524935",
    description: "A dystopian social science fiction novel",
    cover_image: "1984.jpg",
    age_group: 2,
    available_copy: 5,
    total_copy: 5,
    book_location: "Section A, Shelf 3",
    publishing_date: Date.new(1949, 6, 8),
    publisher: "Secker and Warburg",
    category: non_fiction,
    sub_category: SubCategory.find_by(title: "Contemporary Fiction"),
    author: Author.find_by(name: "George Orwell")
  },
  {
    title: "Pride and Prejudice",
    edition: "Third Edition",
    language: "English",
    isbn: "978-0141439518",
    description: "A romantic novel of manners",
    cover_image: "pride.jpg",
    age_group: 1,
    available_copy: 3,
    total_copy: 3,
    book_location: "Section B, Shelf 2",
    publishing_date: Date.new(1813, 1, 28),
    publisher: "T. Egerton, Whitehall",
    category: fiction,
    sub_category: SubCategory.find_by(title: "Classic Literature"),
    author: Author.find_by(name: "Jane Austen")
  }
]

books.each do |book_data|
  book = Book.create!(book_data)
  book.genres << genres.sample(2)
end

puts "Seed data created successfully!"  