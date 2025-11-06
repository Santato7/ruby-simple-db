require_relative 'lib/kv_store'
require 'fileutils'

def test_write_and_read
  db_name = '.test_db'
  store = KVStore.new(db_name)
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
ensure
  FileUtils.rm_rf(db_name) if Dir.exist?(db_name)
end

test_write_and_read
