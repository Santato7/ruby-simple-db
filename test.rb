require_relative 'main'

def test_write_and_read
  key = "test_key"
  value = "test_value"

  write(key, value)
  retrieved_value = read(key)

  if retrieved_value == value
    puts "Test passed!"
  else
    puts "Test failed!"
    puts "Expected: #{value}"
    puts "Got: #{retrieved_value}"
  end
end

test_write_and_read
