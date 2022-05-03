require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# @all_stores = Store.all

@annual_revenue = Store.sum(:annual_revenue)
@store_count = Store.count
@count_store_big_revenue = Store.where("annual_revenue > 1000000").count

puts "Total Annual Revenue: $#{@annual_revenue}"
puts "Average Annual Revenue: $#{@annual_revenue / @store_count}"

puts "Stores with over $1m revenue: #{@count_store_big_revenue}"





### Exercise 5: Calculations
# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.