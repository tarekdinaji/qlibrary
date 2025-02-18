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

categories = ["fiction", "non_fiction", "academic", "religious", "reference", "technology"]
categories.each do |c|
  Category.create(title: c )
end


puts "Creating sub-categories..."

sub_categories_fiction = ["contemporary fiction", "classic literature", "science fiction", "mystrey"]
sub_categories_fiction.each do |s|
  SubCategory.create(title: s, category_id: 1)
end

sub_categories_non_fiction = ["biography", "history", "science", "self-help"]
sub_categories_non_fiction.each do |s|
  SubCategory.create(title: s, category_id: 2)
end

sub_categories_edu = ["bangla", "english", "mathematics", "religious_study", "biology", "economics", "science" ]
sub_categories_edu.each do |s|
  SubCategory.create(title: s, category_id: 3)
end

sub_categories_religion = ["islam", "christianity", "buddhism", "hinduism", "atheism" ]
sub_categories_religion.each do |s|
  SubCategory.create(title: s, category_id: 4)
end

sub_categories_reference = ["encyclopedia", "dictionary", "telephone_book", "atlas" ]
sub_categories_reference.each do |s|
  SubCategory.create(title: s, category_id: 5)
end

sub_categories_tech = ["programming", "cybersecurity", "ai", "robotics"]
sub_categories_tech.each do |s|
  SubCategory.create(title: s, category_id: 6)
end

puts "Creating genres..."
genre = ["travel", "adventure", "technology", "robotics", "romance", "thriller", "drama", "fantasy", "history", "education"]
genre.each do |s|
  Genre.create(title: s)
end

puts "Creating authors..."
Author.create!([
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
    category_id: 1,
    sub_category_id: 1,
    author_id: 1
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
    category_id: 1,
    sub_category_id: 2,
    author_id: 3
  }
]

books.each do |book_data|
  Book.create!(book_data)
end

puts "feeding books_genres data"
BooksGenre.create!(book_id: 1, genre_id: 1)
BooksGenre.create!(book_id: 1, genre_id: 3)
BooksGenre.create!(book_id: 1, genre_id: 5)
BooksGenre.create!(book_id: 2, genre_id: 2)


puts ".\n.\n.\n."
puts "Seed data created successfully!"
