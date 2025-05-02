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

categories = [
  "Fiction", "Non-Fiction", "Academic", "Religious", "Reference", 
  "Technology", "Art", "Philosophy", "Poetry", "Cooking",
  "Travel", "Sports", "Health", "Business", "Music",
  "Graphic Novels", "Crafts", "Children's", "Young Adult", "Drama"
]

categories.each do |c|
  Category.create!(title: c)
end

puts "Creating sub-categories..."

# Fiction subcategories
sub_categories_fiction = [
  "Contemporary Fiction", "Classic Literature", "Science Fiction", "Mystery",
  "Fantasy", "Horror", "Romance", "Historical Fiction", "Thriller", "Adventure"
]
sub_categories_fiction.each do |s|
  SubCategory.create!(title: s, category_id: 1)
end

# Non-fiction subcategories
sub_categories_non_fiction = [
  "Biography", "History", "Science", "Self-Help",
  "Memoir", "True Crime", "Essays", "Politics", "Nature", "Psychology"
]
sub_categories_non_fiction.each do |s|
  SubCategory.create!(title: s, category_id: 2)
end

# Academic subcategories
sub_categories_edu = [
  "Bangla", "English", "Mathematics", "Religious Study", "Biology", 
  "Economics", "Physics", "Chemistry", "Computer Science", "Sociology"
]
sub_categories_edu.each do |s|
  SubCategory.create!(title: s, category_id: 3)
end

# Religious subcategories
sub_categories_religion = [
  "Islam", "Christianity", "Buddhism", "Hinduism", "Judaism",
  "Sikhism", "Taoism", "Mythology", "Religious History", "Spirituality"
]
sub_categories_religion.each do |s|
  SubCategory.create!(title: s, category_id: 4)
end

# Reference subcategories
sub_categories_reference = [
  "Encyclopedia", "Dictionary", "Telephone Book", "Atlas",
  "Manual", "Handbook", "Guide", "Almanac", "Thesaurus", "Directory"
]
sub_categories_reference.each do |s|
  SubCategory.create!(title: s, category_id: 5)
end

# Technology subcategories
sub_categories_tech = [
  "Programming", "Cybersecurity", "AI", "Robotics",
  "Web Development", "Data Science", "Blockchain", "Mobile Development", "DevOps", "Cloud Computing"
]
sub_categories_tech.each do |s|
  SubCategory.create!(title: s, category_id: 6)
end

# Add subcategories for some of the new categories
sub_categories_art = ["Painting", "Photography", "Sculpture", "Architecture", "Design"]
sub_categories_art.each do |s|
  SubCategory.create!(title: s, category_id: 7)
end

sub_categories_business = ["Management", "Marketing", "Finance", "Entrepreneurship", "Leadership"]
sub_categories_business.each do |s|
  SubCategory.create!(title: s, category_id: 14)
end

puts "Creating genres..."
genres = [
  "Travel", "Adventure", "Technology", "Robotics", "Romance", "Thriller", "Drama", "Fantasy", 
  "History", "Education", "Dystopian", "Comedy", "Science", "Mystery", "Supernatural",
  "Satire", "Coming-of-age", "War", "Philosophical", "Psychological"
]
genres.each do |s|
  Genre.create!(title: s)
end

puts "Creating authors..."
authors = [
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
  },
  {
    name: "Stephen King",
    description: "American author of horror, supernatural fiction, and fantasy",
    email: "king@example.com",
    profile_pic: "king.jpg"
  },
  {
    name: "Agatha Christie",
    description: "English writer known for detective novels",
    email: "christie@example.com",
    profile_pic: "christie.jpg"
  },
  {
    name: "Haruki Murakami",
    description: "Japanese writer of surrealist fiction",
    email: "murakami@example.com",
    profile_pic: "murakami.jpg"
  },
  {
    name: "Gabriel García Márquez",
    description: "Colombian novelist known for magical realism",
    email: "marquez@example.com",
    profile_pic: "marquez.jpg"
  },
  {
    name: "Chimamanda Ngozi Adichie",
    description: "Nigerian writer of novels and short stories",
    email: "adichie@example.com",
    profile_pic: "adichie.jpg"
  },
  {
    name: "Neil Gaiman",
    description: "English author of fantasy and graphic novels",
    email: "gaiman@example.com",
    profile_pic: "gaiman.jpg"
  },
  {
    name: "Margaret Atwood",
    description: "Canadian poet, novelist, and literary critic",
    email: "atwood@example.com",
    profile_pic: "atwood.jpg"
  },
  {
    name: "Yuval Noah Harari",
    description: "Israeli historian and author of popular science books",
    email: "harari@example.com",
    profile_pic: "harari.jpg"
  },
  {
    name: "Malcolm Gladwell",
    description: "Canadian journalist and author",
    email: "gladwell@example.com",
    profile_pic: "gladwell.jpg"
  },
  {
    name: "Michelle Obama",
    description: "American attorney, author, and former First Lady",
    email: "mobama@example.com",
    profile_pic: "mobama.jpg"
  },
  {
    name: "Toni Morrison",
    description: "American novelist and professor",
    email: "morrison@example.com",
    profile_pic: "morrison.jpg"
  },
  {
    name: "Khaled Hosseini",
    description: "Afghan-American novelist and physician",
    email: "hosseini@example.com",
    profile_pic: "hosseini.jpg"
  },
  {
    name: "Leo Tolstoy",
    description: "Russian writer regarded as one of the greatest authors of all time",
    email: "tolstoy@example.com",
    profile_pic: "tolstoy.jpg"
  },
  {
    name: "Mark Twain",
    description: "American writer, humorist, publisher, and lecturer",
    email: "twain@example.com",
    profile_pic: "twain.jpg"
  },
  {
    name: "J.R.R. Tolkien",
    description: "English writer, poet, philologist, and academic",
    email: "tolkien@example.com",
    profile_pic: "tolkien.jpg"
  },
  {
    name: "Robert Martin",
    description: "American software engineer and author, known as 'Uncle Bob'",
    email: "martin@example.com",
    profile_pic: "martin.jpg"
  },
  {
    name: "Julia Child",
    description: "American cooking teacher, author, and television personality",
    email: "child@example.com",
    profile_pic: "child.jpg"
  }
]

authors.each do |author_data|
  Author.create!(author_data)
end

puts "Creating books..."
books = [
  {
    title: "Harry Potter and the Philosopher's Stone",
    edition: "First Edition",
    language: "English",
    isbn: "978-0747532699",
    description: "The first novel in the Harry Potter series following a young wizard's adventures at Hogwarts School of Witchcraft and Wizardry",
    cover_image: "harry_potter.jpg",
    age_group: 2,
    available_copy: 5,
    total_copy: 5,
    book_location: "Section A, Shelf 3",
    publishing_date: Date.new(1997, 6, 26),
    publisher: "Bloomsbury",
    category_id: 1,
    sub_category_id: 5,
    author_id: 1
  },
  {
    title: "Nineteen Eighty-Four",
    edition: "First Edition",
    language: "English",
    isbn: "978-0451524935",
    description: "A dystopian social science fiction novel",
    cover_image: "1984.jpg",
    age_group: 3,
    available_copy: 7,
    total_copy: 10,
    book_location: "Section A, Shelf 5",
    publishing_date: Date.new(1949, 6, 8),
    publisher: "Secker and Warburg",
    category_id: 1,
    sub_category_id: 2,
    author_id: 2
  },
  {
    title: "Pride and Prejudice",
    edition: "Third Edition",
    language: "English",
    isbn: "978-0141439518",
    description: "A romantic novel of manners",
    cover_image: "pride.jpg",
    age_group: 3,
    available_copy: 3,
    total_copy: 3,
    book_location: "Section B, Shelf 2",
    publishing_date: Date.new(1813, 1, 28),
    publisher: "T. Egerton, Whitehall",
    category_id: 1,
    sub_category_id: 2,
    author_id: 3
  },
  {
    title: "The Shining",
    edition: "Deluxe Edition",
    language: "English",
    isbn: "978-0385121675",
    description: "A horror novel set in an isolated hotel",
    cover_image: "shining.jpg",
    age_group: 4,
    available_copy: 2,
    total_copy: 4,
    book_location: "Section C, Shelf 1",
    publishing_date: Date.new(1977, 1, 28),
    publisher: "Doubleday",
    category_id: 1,
    sub_category_id: 6,
    author_id: 4
  },
  {
    title: "Murder on the Orient Express",
    edition: "Reprint",
    language: "English",
    isbn: "978-0062693662",
    description: "A detective novel featuring Hercule Poirot",
    cover_image: "orient_express.jpg",
    age_group: 3,
    available_copy: 4,
    total_copy: 6,
    book_location: "Section D, Shelf 4",
    publishing_date: Date.new(1934, 1, 1),
    publisher: "Collins Crime Club",
    category_id: 1,
    sub_category_id: 4,
    author_id: 5
  },
  {
    title: "Norwegian Wood",
    edition: "Second Edition",
    language: "Japanese, English (translation)",
    isbn: "978-0375704024",
    description: "A nostalgic story of loss and sexuality",
    cover_image: "norwegian_wood.jpg",
    age_group: 4,
    available_copy: 3,
    total_copy: 5,
    book_location: "Section E, Shelf 2",
    publishing_date: Date.new(1987, 9, 4),
    publisher: "Kodansha",
    category_id: 1,
    sub_category_id: 1,
    author_id: 6
  },
  {
    title: "One Hundred Years of Solitude",
    edition: "Anniversary Edition",
    language: "Spanish, English (translation)",
    isbn: "978-0060883287",
    description: "The multi-generational story of the Buendía family",
    cover_image: "solitude.jpg",
    age_group: 4,
    available_copy: 2,
    total_copy: 3,
    book_location: "Section F, Shelf 1",
    publishing_date: Date.new(1967, 5, 30),
    publisher: "Harper & Row",
    category_id: 1,
    sub_category_id: 8,
    author_id: 7
  },
  {
    title: "Americanah",
    edition: "First Edition",
    language: "English",
    isbn: "978-0307455925",
    description: "A novel about a young Nigerian woman who emigrates to the United States",
    cover_image: "americanah.jpg",
    age_group: 4,
    available_copy: 5,
    total_copy: 5,
    book_location: "Section G, Shelf 3",
    publishing_date: Date.new(2013, 5, 14),
    publisher: "Alfred A. Knopf",
    category_id: 1,
    sub_category_id: 1,
    author_id: 8
  },
  {
    title: "American Gods",
    edition: "Author's Preferred Text",
    language: "English",
    isbn: "978-0062572110",
    description: "A blend of Americana, fantasy, and various strands of mythology",
    cover_image: "american_gods.jpg",
    age_group: 4,
    available_copy: 3,
    total_copy: 6,
    book_location: "Section H, Shelf 2",
    publishing_date: Date.new(2001, 6, 19),
    publisher: "William Morrow",
    category_id: 1,
    sub_category_id: 5,
    author_id: 9
  },
  {
    title: "The Handmaid's Tale",
    edition: "Special Edition",
    language: "English",
    isbn: "978-0385490818",
    description: "A dystopian novel set in a near-future New England",
    cover_image: "handmaids_tale.jpg",
    age_group: 4,
    available_copy: 4,
    total_copy: 7,
    book_location: "Section I, Shelf 4",
    publishing_date: Date.new(1985, 6, 1),
    publisher: "McClelland and Stewart",
    category_id: 1,
    sub_category_id: 3,
    author_id: 10
  },
  {
    title: "Sapiens: A Brief History of Humankind",
    edition: "First Edition",
    language: "Hebrew, English (translation)",
    isbn: "978-0062316097",
    description: "A book that explores the history of the human species",
    cover_image: "sapiens.jpg",
    age_group: 4,
    available_copy: 8,
    total_copy: 10,
    book_location: "Section J, Shelf 1",
    publishing_date: Date.new(2011, 1, 1),
    publisher: "Harper",
    category_id: 2,
    sub_category_id: 12,
    author_id: 11
  },
  {
    title: "Outliers: The Story of Success",
    edition: "First Edition",
    language: "English",
    isbn: "978-0316017923",
    description: "A book examining the factors that contribute to high levels of success",
    cover_image: "outliers.jpg",
    age_group: 4,
    available_copy: 6,
    total_copy: 8,
    book_location: "Section K, Shelf 3",
    publishing_date: Date.new(2008, 11, 18),
    publisher: "Little, Brown and Company",
    category_id: 2,
    sub_category_id: 14,
    author_id: 12
  },
  {
    title: "Becoming",
    edition: "First Edition",
    language: "English",
    isbn: "978-1524763138",
    description: "A memoir by the former First Lady of the United States",
    cover_image: "becoming.jpg",
    age_group: 4,
    available_copy: 10,
    total_copy: 12,
    book_location: "Section L, Shelf 2",
    publishing_date: Date.new(2018, 11, 13),
    publisher: "Crown Publishing",
    category_id: 2,
    sub_category_id: 11,
    author_id: 13
  },
  {
    title: "Beloved",
    edition: "Reprint",
    language: "English",
    isbn: "978-1400033416",
    description: "A novel inspired by the story of an African-American slave",
    cover_image: "beloved.jpg",
    age_group: 4,
    available_copy: 3,
    total_copy: 5,
    book_location: "Section M, Shelf 4",
    publishing_date: Date.new(1987, 9, 2),
    publisher: "Alfred A. Knopf",
    category_id: 1,
    sub_category_id: 8,
    author_id: 14
  },
  {
    title: "The Kite Runner",
    edition: "First Edition",
    language: "English",
    isbn: "978-1573222457",
    description: "A novel about friendship, betrayal, and redemption set against the backdrop of Afghanistan's recent history",
    cover_image: "kite_runner.jpg",
    age_group: 4,
    available_copy: 7,
    total_copy: 9,
    book_location: "Section N, Shelf 1",
    publishing_date: Date.new(2003, 5, 29),
    publisher: "Riverhead Books",
    category_id: 1,
    sub_category_id: 1,
    author_id: 15
  },
  {
    title: "War and Peace",
    edition: "Deluxe Edition",
    language: "Russian, English (translation)",
    isbn: "978-1400079988",
    description: "A novel that chronicles the French invasion of Russia and the impact of the Napoleonic era on Russian society",
    cover_image: "war_peace.jpg",
    age_group: 4,
    available_copy: 2,
    total_copy: 4,
    book_location: "Section O, Shelf 3",
    publishing_date: Date.new(1869, 1, 1),
    publisher: "The Russian Messenger",
    category_id: 1,
    sub_category_id: 8,
    author_id: 16
  },
  {
    title: "The Adventures of Huckleberry Finn",
    edition: "Anniversary Edition",
    language: "English",
    isbn: "978-0142437179",
    description: "A novel about a young boy's journey down the Mississippi River",
    cover_image: "huck_finn.jpg",
    age_group: 3,
    available_copy: 4,
    total_copy: 6,
    book_location: "Section P, Shelf 2",
    publishing_date: Date.new(1884, 12, 10),
    publisher: "Chatto & Windus",
    category_id: 1,
    sub_category_id: 2,
    author_id: 17
  },
  {
    title: "The Lord of the Rings",
    edition: "Collector's Edition",
    language: "English",
    isbn: "978-0618640157",
    description: "An epic high-fantasy novel",
    cover_image: "lotr.jpg",
    age_group: 3,
    available_copy: 5,
    total_copy: 8,
    book_location: "Section Q, Shelf 4",
    publishing_date: Date.new(1954, 7, 29),
    publisher: "Allen & Unwin",
    category_id: 1,
    sub_category_id: 5,
    author_id: 18
  },
  {
    title: "Clean Code: A Handbook of Agile Software Craftsmanship",
    edition: "First Edition",
    language: "English",
    isbn: "978-0132350884",
    description: "A book about writing clean, maintainable code",
    cover_image: "clean_code.jpg",
    age_group: 4,
    available_copy: 8,
    total_copy: 10,
    book_location: "Section R, Shelf 1",
    publishing_date: Date.new(2008, 8, 1),
    publisher: "Prentice Hall",
    category_id: 6,
    sub_category_id: 51,
    author_id: 19
  },
  {
    title: "Mastering the Art of French Cooking",
    edition: "40th Anniversary Edition",
    language: "English",
    isbn: "978-0375413407",
    description: "A comprehensive cookbook of French cuisine",
    cover_image: "french_cooking.jpg",
    age_group: 4,
    available_copy: 6,
    total_copy: 7,
    book_location: "Section S, Shelf 3",
    publishing_date: Date.new(1961, 10, 16),
    publisher: "Alfred A. Knopf",
    category_id: 10,
    sub_category_id: 5,
    author_id: 20
  }
]

books.each do |book_data|
  Book.create!(book_data)
end

puts "Feeding books_genres data..."
# Harry Potter
BooksGenre.create!(book_id: 1, genre_id: 2)  # Adventure
BooksGenre.create!(book_id: 1, genre_id: 8)  # Fantasy
BooksGenre.create!(book_id: 1, genre_id: 12) # Coming-of-age

# 1984
BooksGenre.create!(book_id: 2, genre_id: 11) # Dystopian
BooksGenre.create!(book_id: 2, genre_id: 19) # Philosophical
BooksGenre.create!(book_id: 2, genre_id: 16) # Satire

# Pride and Prejudice
BooksGenre.create!(book_id: 3, genre_id: 5)  # Romance
BooksGenre.create!(book_id: 3, genre_id: 16) # Satire
BooksGenre.create!(book_id: 3, genre_id: 12) # Comedy

# The Shining
BooksGenre.create!(book_id: 4, genre_id: 6)  # Thriller
BooksGenre.create!(book_id: 4, genre_id: 15) # Supernatural
BooksGenre.create!(book_id: 4, genre_id: 20) # Psychological

# Murder on the Orient Express
BooksGenre.create!(book_id: 5, genre_id: 14) # Mystery
BooksGenre.create!(book_id: 5, genre_id: 6)  # Thriller
BooksGenre.create!(book_id: 5, genre_id: 9)  # History

# Norwegian Wood
BooksGenre.create!(book_id: 6, genre_id: 5)  # Romance
BooksGenre.create!(book_id: 6, genre_id: 12) # Coming-of-age
BooksGenre.create!(book_id: 6, genre_id: 20) # Psychological

# One Hundred Years of Solitude
BooksGenre.create!(book_id: 7, genre_id: 8)  # Fantasy
BooksGenre.create!(book_id: 7, genre_id: 9)  # History
BooksGenre.create!(book_id: 7, genre_id: 15) # Supernatural

# Americanah
BooksGenre.create!(book_id: 8, genre_id: 5)  # Romance
BooksGenre.create!(book_id: 8, genre_id: 1)  # Travel
BooksGenre.create!(book_id: 8, genre_id: 12) # Coming-of-age

# American Gods
BooksGenre.create!(book_id: 9, genre_id: 8)  # Fantasy
BooksGenre.create!(book_id: 9, genre_id: 15) # Supernatural
BooksGenre.create!(book_id: 9, genre_id: 1)  # Travel

# The Handmaid's Tale
BooksGenre.create!(book_id: 10, genre_id: 11) # Dystopian
BooksGenre.create!(book_id: 10, genre_id: 19) # Philosophical
BooksGenre.create!(book_id: 10, genre_id: 20) # Psychological

# Sapiens
BooksGenre.create!(book_id: 11, genre_id: 9)  # History
BooksGenre.create!(book_id: 11, genre_id: 13) # Science
BooksGenre.create!(book_id: 11, genre_id: 19) # Philosophical

# Outliers
BooksGenre.create!(book_id: 12, genre_id: 10) # Education
BooksGenre.create!(book_id: 12, genre_id: 13) # Science
BooksGenre.create!(book_id: 12, genre_id: 20) # Psychological

# Becoming
BooksGenre.create!(book_id: 13, genre_id: 9)  # History
BooksGenre.create!(book_id: 13, genre_id: 10) # Education
BooksGenre.create!(book_id: 13, genre_id: 19) # Philosophical

# Beloved
BooksGenre.create!(book_id: 14, genre_id: 9)  # History
BooksGenre.create!(book_id: 14, genre_id: 15) # Supernatural
BooksGenre.create!(book_id: 14, genre_id: 20) # Psychological

# The Kite Runner
BooksGenre.create!(book_id: 15, genre_id: 9)  # History
BooksGenre.create!(book_id: 15, genre_id: 7)  # Drama
BooksGenre.create!(book_id: 15, genre_id: 12) # Coming-of-age

# War and Peace
BooksGenre.create!(book_id: 16, genre_id: 9)  # History
BooksGenre.create!(book_id: 16, genre_id: 18) # War
BooksGenre.create!(book_id: 16, genre_id: 5)  # Romance

# Huckleberry Finn
BooksGenre.create!(book_id: 17, genre_id: 2)  # Adventure
BooksGenre.create!(book_id: 17, genre_id: 12) # Coming-of-age
BooksGenre.create!(book_id: 17, genre_id: 16) # Satire

# Lord of the Rings
BooksGenre.create!(book_id: 18, genre_id: 8)  # Fantasy
BooksGenre.create!(book_id: 18, genre_id: 2)  # Adventure
BooksGenre.create!(book_id: 18, genre_id: 18) # War

# Clean Code
BooksGenre.create!(book_id: 19, genre_id: 3)  # Technology
BooksGenre.create!(book_id: 19, genre_id: 10) # Education
BooksGenre.create!(book_id: 19, genre_id: 13) # Science

# Mastering the Art of French Cooking
BooksGenre.create!(book_id: 20, genre_id: 10) # Education
BooksGenre.create!(book_id: 20, genre_id: 1)  # Travel

puts ".\n.\n.\n."
puts "Seed data created successfully!"