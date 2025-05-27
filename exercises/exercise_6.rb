require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 55)
@store1.employees.create(first_name: "Ali", last_name: "Yusuf", hourly_rate: 50)

@store2.employees.create(first_name: "Tom", last_name: "Smith", hourly_rate: 40)
@store2.employees.create(first_name: "Linda", last_name: "Brown", hourly_rate: 45)

puts @store1.employees.count   
puts @store2.employees.count 
