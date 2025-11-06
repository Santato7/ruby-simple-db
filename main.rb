require_relative 'lib/kv_store'

# This is an example of how to use the KVStore class.
# You can use this file to test the functionality of the library.

# Create a new instance of the KVStore with the default db name
store1 = KVStore.new
store1.write("my_key", "my_value1")
value1 = store1.read("my_key")
puts "The value for 'my_key' in the default db is: #{value1}"

# Create a new instance of the KVStore with a custom db name
store2 = KVStore.new('my_custom_db')
store2.write("my_key", "my_value2")
value2 = store2.read("my_key")
puts "The value for 'my_key' in 'my_custom_db' is: #{value2}"
