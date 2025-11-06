require_relative 'lib/kv_store'

# This is an example of how to use the KVStore class.
# You can use this file to test the functionality of the library.

# Create a new instance of the KVStore
store = KVStore.new

# Write a key-value pair
store.write("my_key", "my_value")

# Read the value for the key
value = store.read("my_key")

# Print the value
puts "The value for 'my_key' is: #{value}"
