require_relative 'todolist.rb'

puts "TEST"
# Creates a new todo list
lst = TodoList.new( "What to do" )

# Add four new items
lst.add_item( "1st task")
lst.add_item( "2nd task" )
lst.add_item( "3rd task" )
lst.add_item( "4th task" )

# Print the list
lst.show()

# Delete the first item
lst.delete_by_index( 0 )

# Print the list
lst.show()

# Delete the second item
lst.delete_by_index(1)

# Print the list
lst.show()

# Update the completion status of the first item to complete
lst.set_as_completed_by_index( 0 )

# Print the list
lst.show()

# Update the title of the list
lst.set_title( "Another Title" )

# Print the list
lst.show()

#-------------------------
#test new fetures follow
puts "TEST NEW FETURES BELOW:"

lst.reverse
lst.show()

puts ""
puts "items num : " + lst.num().to_s

puts "is empty ?" + "  " + lst.is_empty().to_s

lst.delete_by_index(0)
lst.delete_by_index(0)
puts "is empty ?" + "  " + lst.is_empty().to_s