20.times do |i|
  Book.create(
    book_name: Faker::Book.title,
    genre: Faker::Book.genre,
    author_name: Faker::Book.author,
    summary: Faker::Quote.famous_last_words + Faker::Quote.famous_last_words,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    published_date: Faker::Date.between(from: "2015-12-20", to: "2025-03-28"),
  )
  puts "Book #{i} Seeded"
end
