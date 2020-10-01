# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Read words from the file, strip new lines.
all_words = File.open("db/data/words_alpha.txt", "r") do |file|
  file.each_line.map { |word| Array(word.strip) }
end

# Create all the records using bulk_insert.
RandomWord.bulk_insert values: all_words