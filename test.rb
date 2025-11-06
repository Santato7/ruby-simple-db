require_relative 'lib/kv_store'

def test_write_and_read
  store = KVStore.new
  key = "test_key"
  value = "test_value"

  store.write(key, value)
  retrieved_value = store.read(key)

  if retrieved_value == value
    puts "Test passed!"
  else
    puts "Test failed!"
    puts "Expected: #{value}"
    puts "Got: #{retrieved_value}"
  end
end

test_write_and_read
