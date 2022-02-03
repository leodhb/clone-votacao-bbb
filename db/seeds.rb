# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

poll = Poll.create(finished_at: nil)

poll.poll_options.create [
  { name: 'Java',
    photo: 'https://cdn-icons-png.flaticon.com/512/226/226777.png' },
  { name: 'C#',
    photo: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Csharp_Logo.png' },
  { name: 'PHP',
    photo: 'https://upload.wikimedia.org/wikipedia/commons/2/27/PHP-logo.svg' }
]
