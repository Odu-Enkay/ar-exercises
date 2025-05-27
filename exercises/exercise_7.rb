require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "What is your name?"
store_name = gets.chomp

Store.create(name:store_name)

#Display the error messages provided back from ActiveRecord to the user
if store.invalid?
  puts "\n⚠️ Error(s) prevented this store from being saved:"
  store.errors.full_messages.each do |msg|
    puts "- #{msg}"
  end
else
  puts "\n✅ Store '#{store.name}' created successfully!"
end
